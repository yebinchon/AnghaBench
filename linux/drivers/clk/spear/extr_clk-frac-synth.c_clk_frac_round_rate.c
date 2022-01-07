
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_frac {int rtbl_cnt; } ;


 long clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 int frac_calc_rate ;
 struct clk_frac* to_clk_frac (struct clk_hw*) ;

__attribute__((used)) static long clk_frac_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *prate)
{
 struct clk_frac *frac = to_clk_frac(hw);
 int unused;

 return clk_round_rate_index(hw, drate, *prate, frac_calc_rate,
   frac->rtbl_cnt, &unused);
}
