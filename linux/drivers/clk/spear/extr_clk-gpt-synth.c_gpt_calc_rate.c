
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpt_rate_tbl {int nscale; int mscale; } ;
struct clk_hw {int dummy; } ;
struct clk_gpt {struct gpt_rate_tbl* rtbl; } ;


 struct clk_gpt* to_clk_gpt (struct clk_hw*) ;

__attribute__((used)) static unsigned long gpt_calc_rate(struct clk_hw *hw, unsigned long prate,
  int index)
{
 struct clk_gpt *gpt = to_clk_gpt(hw);
 struct gpt_rate_tbl *rtbl = gpt->rtbl;

 prate /= ((1 << (rtbl[index].nscale + 1)) * (rtbl[index].mscale + 1));

 return prate;
}
