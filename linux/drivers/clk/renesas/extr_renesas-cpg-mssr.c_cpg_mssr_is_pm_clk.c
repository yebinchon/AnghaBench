
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_phandle_args {scalar_t__ np; int args_count; int* args; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct cpg_mssr_clk_domain {unsigned int num_core_pm_clks; int* core_pm_clks; TYPE_2__ genpd; } ;





__attribute__((used)) static bool cpg_mssr_is_pm_clk(const struct of_phandle_args *clkspec,
          struct cpg_mssr_clk_domain *pd)
{
 unsigned int i;

 if (clkspec->np != pd->genpd.dev.of_node || clkspec->args_count != 2)
  return 0;

 switch (clkspec->args[0]) {
 case 129:
  for (i = 0; i < pd->num_core_pm_clks; i++)
   if (clkspec->args[1] == pd->core_pm_clks[i])
    return 1;
  return 0;

 case 128:
  return 1;

 default:
  return 0;
 }
}
