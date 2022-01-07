
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_cmd_header {int status; } ;
struct fsl_mc_command {int header; } ;
typedef enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;



__attribute__((used)) static enum mc_cmd_status mc_cmd_hdr_read_status(struct fsl_mc_command *cmd)
{
 struct mc_cmd_header *hdr = (struct mc_cmd_header *)&cmd->header;

 return (enum mc_cmd_status)hdr->status;
}
