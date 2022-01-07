
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_cmd_set_irq_mask {int irq_index; int mask; } ;


 int DPRC_CMDID_SET_IRQ_MASK ;
 int cpu_to_le32 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_set_irq_mask(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        u8 irq_index,
        u32 mask)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_cmd_set_irq_mask *cmd_params;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_SET_IRQ_MASK,
       cmd_flags, token);
 cmd_params = (struct dprc_cmd_set_irq_mask *)cmd.params;
 cmd_params->mask = cpu_to_le32(mask);
 cmd_params->irq_index = irq_index;


 return mc_send_command(mc_io, &cmd);
}
