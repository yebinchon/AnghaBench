
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s32 ;
struct TYPE_2__ {int pm_ctrl; } ;


 int MAX_IOPAD_LATCH_TIME ;
 int OMAP4430_WUCLK_CTRL_MASK ;
 int OMAP4430_WUCLK_STATUS_MASK ;
 int OMAP4430_WUCLK_STATUS_SHIFT ;
 scalar_t__ PRM_INSTANCE_UNKNOWN ;
 TYPE_1__ omap4_prcm_irq_setup ;
 int omap4_prm_read_inst_reg (scalar_t__,int ) ;
 int omap4_prm_rmw_inst_reg_bits (int,int,scalar_t__,int ) ;
 scalar_t__ omap4_prmst_get_prm_dev_inst () ;
 int omap_test_timeout (int,int,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static void omap44xx_prm_reconfigure_io_chain(void)
{
 int i = 0;
 s32 inst = omap4_prmst_get_prm_dev_inst();

 if (inst == PRM_INSTANCE_UNKNOWN)
  return;


 omap4_prm_rmw_inst_reg_bits(OMAP4430_WUCLK_CTRL_MASK,
        OMAP4430_WUCLK_CTRL_MASK,
        inst,
        omap4_prcm_irq_setup.pm_ctrl);
 omap_test_timeout(
  (((omap4_prm_read_inst_reg(inst,
        omap4_prcm_irq_setup.pm_ctrl) &
     OMAP4430_WUCLK_STATUS_MASK) >>
    OMAP4430_WUCLK_STATUS_SHIFT) == 1),
  MAX_IOPAD_LATCH_TIME, i);
 if (i == MAX_IOPAD_LATCH_TIME)
  pr_warn("PRM: I/O chain clock line assertion timed out\n");


 omap4_prm_rmw_inst_reg_bits(OMAP4430_WUCLK_CTRL_MASK, 0x0,
        inst,
        omap4_prcm_irq_setup.pm_ctrl);
 omap_test_timeout(
  (((omap4_prm_read_inst_reg(inst,
        omap4_prcm_irq_setup.pm_ctrl) &
     OMAP4430_WUCLK_STATUS_MASK) >>
    OMAP4430_WUCLK_STATUS_SHIFT) == 0),
  MAX_IOPAD_LATCH_TIME, i);
 if (i == MAX_IOPAD_LATCH_TIME)
  pr_warn("PRM: I/O chain clock line deassertion timed out\n");

 return;
}
