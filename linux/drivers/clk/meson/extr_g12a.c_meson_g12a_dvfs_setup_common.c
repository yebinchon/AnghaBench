
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {int hw; } ;
struct TYPE_5__ {int hw; } ;
struct TYPE_4__ {int nb; struct clk_hw* xtal; } ;


 size_t CLKID_CPU_CLK_DYN1_SEL ;
 struct clk* __clk_lookup (char const*) ;
 char* clk_hw_get_name (int *) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int ) ;
 int clk_notifier_register (struct clk*,int *) ;
 int dev_err (int *,char*) ;
 TYPE_3__ g12a_cpu_clk_dyn ;
 int g12a_cpu_clk_mux_nb ;
 TYPE_2__ g12a_cpu_clk_postmux0 ;
 TYPE_1__ g12a_cpu_clk_postmux0_nb_data ;

__attribute__((used)) static int meson_g12a_dvfs_setup_common(struct platform_device *pdev,
     struct clk_hw **hws)
{
 const char *notifier_clk_name;
 struct clk *notifier_clk;
 struct clk_hw *xtal;
 int ret;

 xtal = clk_hw_get_parent_by_index(hws[CLKID_CPU_CLK_DYN1_SEL], 0);


 g12a_cpu_clk_postmux0_nb_data.xtal = xtal;
 notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk_postmux0.hw);
 notifier_clk = __clk_lookup(notifier_clk_name);
 ret = clk_notifier_register(notifier_clk,
        &g12a_cpu_clk_postmux0_nb_data.nb);
 if (ret) {
  dev_err(&pdev->dev, "failed to register the cpu_clk_postmux0 notifier\n");
  return ret;
 }


 notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk_dyn.hw);
 notifier_clk = __clk_lookup(notifier_clk_name);
 ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
 if (ret) {
  dev_err(&pdev->dev, "failed to register the cpu_clk_dyn notifier\n");
  return ret;
 }

 return 0;
}
