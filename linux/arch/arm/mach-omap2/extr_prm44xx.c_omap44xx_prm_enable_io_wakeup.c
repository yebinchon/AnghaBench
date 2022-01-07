
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s32 ;
struct TYPE_2__ {int pm_ctrl; } ;


 int OMAP4430_GLOBAL_WUEN_MASK ;
 scalar_t__ PRM_INSTANCE_UNKNOWN ;
 TYPE_1__ omap4_prcm_irq_setup ;
 int omap4_prm_rmw_inst_reg_bits (int ,int ,scalar_t__,int ) ;
 scalar_t__ omap4_prmst_get_prm_dev_inst () ;

__attribute__((used)) static void omap44xx_prm_enable_io_wakeup(void)
{
 s32 inst = omap4_prmst_get_prm_dev_inst();

 if (inst == PRM_INSTANCE_UNKNOWN)
  return;

 omap4_prm_rmw_inst_reg_bits(OMAP4430_GLOBAL_WUEN_MASK,
        OMAP4430_GLOBAL_WUEN_MASK,
        inst,
        omap4_prcm_irq_setup.pm_ctrl);
}
