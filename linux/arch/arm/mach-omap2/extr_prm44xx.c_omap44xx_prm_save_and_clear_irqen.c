
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int nr_regs; scalar_t__ mask; } ;


 int OMAP4430_PRM_OCP_SOCKET_INST ;
 scalar_t__ OMAP4_REVISION_PRM_OFFSET ;
 TYPE_1__ omap4_prcm_irq_setup ;
 int omap4_prm_read_inst_reg (int ,scalar_t__) ;
 int omap4_prm_write_inst_reg (int ,int ,scalar_t__) ;

__attribute__((used)) static void omap44xx_prm_save_and_clear_irqen(u32 *saved_mask)
{
 int i;
 u16 reg;

 for (i = 0; i < omap4_prcm_irq_setup.nr_regs; i++) {
  reg = omap4_prcm_irq_setup.mask + i * 4;

  saved_mask[i] =
   omap4_prm_read_inst_reg(OMAP4430_PRM_OCP_SOCKET_INST,
      reg);
  omap4_prm_write_inst_reg(0, OMAP4430_PRM_OCP_SOCKET_INST, reg);
 }


 omap4_prm_read_inst_reg(OMAP4430_PRM_OCP_SOCKET_INST,
    OMAP4_REVISION_PRM_OFFSET);
}
