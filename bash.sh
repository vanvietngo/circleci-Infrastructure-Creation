bash create_infrastructure: docker: - image: amazon/aws-cli steps: - checkout - run: name: Create Cloudformation Stack command: | aws cloudformation deploy \ 
--template-file template.yml \ 
--stack-name myStack-${CIRCLE_WORKFLOW_ID:0:5} \ 
--region us-east-2