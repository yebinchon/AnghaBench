
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_vco {int rtbl_cnt; } ;
struct clk_hw {int dummy; } ;


 long clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 struct clk_vco* to_clk_vco (struct clk_hw*) ;
 int vco_calc_rate ;

__attribute__((used)) static long clk_vco_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *prate)
{
 struct clk_vco *vco = to_clk_vco(hw);
 int unused;

 return clk_round_rate_index(hw, drate, *prate, vco_calc_rate,
   vco->rtbl_cnt, &unused);
}
