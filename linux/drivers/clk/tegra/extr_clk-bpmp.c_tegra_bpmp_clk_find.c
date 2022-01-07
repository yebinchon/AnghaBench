
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_clk_info {unsigned int id; } ;



__attribute__((used)) static const struct tegra_bpmp_clk_info *
tegra_bpmp_clk_find(const struct tegra_bpmp_clk_info *clocks,
      unsigned int num_clocks, unsigned int id)
{
 unsigned int i;

 for (i = 0; i < num_clocks; i++)
  if (clocks[i].id == id)
   return &clocks[i];

 return ((void*)0);
}
