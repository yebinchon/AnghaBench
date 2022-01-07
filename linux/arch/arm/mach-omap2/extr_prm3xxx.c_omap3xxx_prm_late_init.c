
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_3__ {int irq; int reconfigure_io_chain; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 int PRM_HAS_IO_WAKEUP ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int of_irq_get (struct device_node*,int ) ;
 int omap3430_pre_es3_1_reconfigure_io_chain ;
 scalar_t__ omap3_has_io_chain_ctrl () ;
 TYPE_1__ omap3_prcm_irq_setup ;
 int omap3_prm_dt_match_table ;
 int omap3_prm_reconfigure_io_chain ;
 int omap3xxx_prm_enable_io_wakeup () ;
 int omap_prcm_register_chain_handler (TYPE_1__*) ;
 int pr_err (char*) ;
 int prm_features ;

__attribute__((used)) static int omap3xxx_prm_late_init(void)
{
 struct device_node *np;
 int irq_num;

 if (!(prm_features & PRM_HAS_IO_WAKEUP))
  return 0;

 if (omap3_has_io_chain_ctrl())
  omap3_prcm_irq_setup.reconfigure_io_chain =
   omap3_prm_reconfigure_io_chain;
 else
  omap3_prcm_irq_setup.reconfigure_io_chain =
   omap3430_pre_es3_1_reconfigure_io_chain;

 np = of_find_matching_node(((void*)0), omap3_prm_dt_match_table);
 if (!np) {
  pr_err("PRM: no device tree node for interrupt?\n");

  return -ENODEV;
 }

 irq_num = of_irq_get(np, 0);
 if (irq_num == -EPROBE_DEFER)
  return irq_num;

 omap3_prcm_irq_setup.irq = irq_num;

 omap3xxx_prm_enable_io_wakeup();

 return omap_prcm_register_chain_handler(&omap3_prcm_irq_setup);
}
