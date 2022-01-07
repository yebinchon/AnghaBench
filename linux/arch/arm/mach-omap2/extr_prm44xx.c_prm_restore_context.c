
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pm_ctrl; int mask; } ;
struct TYPE_3__ {int pm_ctrl; int irq_enable; } ;


 int AM43XX_PRM_DEVICE_INST ;
 int OMAP4430_PRM_OCP_SOCKET_INST ;
 TYPE_2__ omap4_prcm_irq_setup ;
 int omap4_prm_write_inst_reg (int ,int ,int ) ;
 TYPE_1__ omap_prm_context ;

void prm_restore_context(void)
{
 omap4_prm_write_inst_reg(omap_prm_context.irq_enable,
     OMAP4430_PRM_OCP_SOCKET_INST,
     omap4_prcm_irq_setup.mask);

 omap4_prm_write_inst_reg(omap_prm_context.pm_ctrl,
     AM43XX_PRM_DEVICE_INST,
     omap4_prcm_irq_setup.pm_ctrl);
}
