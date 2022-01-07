
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct tegra_bpmp_clk {unsigned int id; struct clk_hw hw; } ;
struct tegra_bpmp {unsigned int num_clocks; struct tegra_bpmp_clk** clocks; } ;
struct of_phandle_args {unsigned int* args; } ;



__attribute__((used)) static struct clk_hw *tegra_bpmp_clk_of_xlate(struct of_phandle_args *clkspec,
           void *data)
{
 unsigned int id = clkspec->args[0], i;
 struct tegra_bpmp *bpmp = data;

 for (i = 0; i < bpmp->num_clocks; i++) {
  struct tegra_bpmp_clk *clk = bpmp->clocks[i];

  if (!clk)
   continue;

  if (clk->id == id)
   return &clk->hw;
 }

 return ((void*)0);
}
