
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gpt {int rtbl_cnt; } ;


 long clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 int gpt_calc_rate ;
 struct clk_gpt* to_clk_gpt (struct clk_hw*) ;

__attribute__((used)) static long clk_gpt_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *prate)
{
 struct clk_gpt *gpt = to_clk_gpt(hw);
 int unused;

 return clk_round_rate_index(hw, drate, *prate, gpt_calc_rate,
   gpt->rtbl_cnt, &unused);
}
