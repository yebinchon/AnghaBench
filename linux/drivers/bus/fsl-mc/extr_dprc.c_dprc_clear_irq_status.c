
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_cmd_clear_irq_status {int irq_index; int status; } ;


 int DPRC_CMDID_CLEAR_IRQ_STATUS ;
 int cpu_to_le32 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_clear_irq_status(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     u16 token,
     u8 irq_index,
     u32 status)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_cmd_clear_irq_status *cmd_params;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_CLEAR_IRQ_STATUS,
       cmd_flags, token);
 cmd_params = (struct dprc_cmd_clear_irq_status *)cmd.params;
 cmd_params->status = cpu_to_le32(status);
 cmd_params->irq_index = irq_index;


 return mc_send_command(mc_io, &cmd);
}
