
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp {unsigned int num_clocks; TYPE_1__** clocks; } ;
struct TYPE_2__ {int hw; } ;


 int clk_hw_unregister (int *) ;

__attribute__((used)) static void tegra_bpmp_unregister_clocks(struct tegra_bpmp *bpmp)
{
 unsigned int i;

 for (i = 0; i < bpmp->num_clocks; i++)
  clk_hw_unregister(&bpmp->clocks[i]->hw);
}
