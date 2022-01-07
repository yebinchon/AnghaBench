
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int nr_regs; scalar_t__ mask; } ;


 int OMAP4430_PRM_OCP_SOCKET_INST ;
 TYPE_1__ omap4_prcm_irq_setup ;
 int omap4_prm_write_inst_reg (int ,int ,scalar_t__) ;

__attribute__((used)) static void omap44xx_prm_restore_irqen(u32 *saved_mask)
{
 int i;

 for (i = 0; i < omap4_prcm_irq_setup.nr_regs; i++)
  omap4_prm_write_inst_reg(saved_mask[i],
      OMAP4430_PRM_OCP_SOCKET_INST,
      omap4_prcm_irq_setup.mask + i * 4);
}
