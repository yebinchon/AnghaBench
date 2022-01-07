
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_spc {int cluster; } ;
struct clk_hw {int dummy; } ;


 unsigned long EIO ;
 struct clk_spc* to_clk_spc (struct clk_hw*) ;
 scalar_t__ ve_spc_get_performance (int ,int*) ;

__attribute__((used)) static unsigned long spc_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_spc *spc = to_clk_spc(hw);
 u32 freq;

 if (ve_spc_get_performance(spc->cluster, &freq))
  return -EIO;

 return freq * 1000;
}
