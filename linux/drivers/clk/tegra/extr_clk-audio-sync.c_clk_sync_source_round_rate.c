
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_sync_source {unsigned long max_rate; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 struct tegra_clk_sync_source* to_clk_sync_source (struct clk_hw*) ;

__attribute__((used)) static long clk_sync_source_round_rate(struct clk_hw *hw, unsigned long rate,
           unsigned long *prate)
{
 struct tegra_clk_sync_source *sync = to_clk_sync_source(hw);

 if (rate > sync->max_rate)
  return -EINVAL;
 else
  return rate;
}
