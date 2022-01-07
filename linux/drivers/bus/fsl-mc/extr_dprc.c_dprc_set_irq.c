
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dprc_irq_cfg {int irq_num; int paddr; int val; } ;
struct dprc_cmd_set_irq {void* irq_num; int irq_addr; int irq_index; void* irq_val; } ;


 int DPRC_CMDID_SET_IRQ ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dprc_set_irq(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u8 irq_index,
   struct dprc_irq_cfg *irq_cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dprc_cmd_set_irq *cmd_params;


 cmd.header = mc_encode_cmd_header(DPRC_CMDID_SET_IRQ,
       cmd_flags,
       token);
 cmd_params = (struct dprc_cmd_set_irq *)cmd.params;
 cmd_params->irq_val = cpu_to_le32(irq_cfg->val);
 cmd_params->irq_index = irq_index;
 cmd_params->irq_addr = cpu_to_le64(irq_cfg->paddr);
 cmd_params->irq_num = cpu_to_le32(irq_cfg->irq_num);


 return mc_send_command(mc_io, &cmd);
}
