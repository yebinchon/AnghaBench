
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_spc {int cluster; } ;
struct clk_hw {int dummy; } ;


 struct clk_spc* to_clk_spc (struct clk_hw*) ;
 int ve_spc_set_performance (int ,unsigned long) ;

__attribute__((used)) static int spc_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_spc *spc = to_clk_spc(hw);

 return ve_spc_set_performance(spc->cluster, rate / 1000);
}
