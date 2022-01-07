
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mc_cmd_header {int cmd_id; } ;
struct fsl_mc_command {int header; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 mc_cmd_hdr_read_cmdid(struct fsl_mc_command *cmd)
{
 struct mc_cmd_header *hdr = (struct mc_cmd_header *)&cmd->header;
 u16 cmd_id = le16_to_cpu(hdr->cmd_id);

 return cmd_id;
}
