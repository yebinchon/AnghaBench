
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_spc {int cluster; } ;
struct clk_hw {int dummy; } ;


 struct clk_spc* to_clk_spc (struct clk_hw*) ;
 long ve_spc_round_performance (int ,unsigned long) ;

__attribute__((used)) static long spc_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *parent_rate)
{
 struct clk_spc *spc = to_clk_spc(hw);

 return ve_spc_round_performance(spc->cluster, drate);
}
