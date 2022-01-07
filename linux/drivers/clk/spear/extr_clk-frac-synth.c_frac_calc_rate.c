
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frac_rate_tbl {int div; } ;
struct clk_hw {int dummy; } ;
struct clk_frac {struct frac_rate_tbl* rtbl; } ;


 struct clk_frac* to_clk_frac (struct clk_hw*) ;

__attribute__((used)) static unsigned long frac_calc_rate(struct clk_hw *hw, unsigned long prate,
  int index)
{
 struct clk_frac *frac = to_clk_frac(hw);
 struct frac_rate_tbl *rtbl = frac->rtbl;

 prate /= 10000;
 prate <<= 14;
 prate /= (2 * rtbl[index].div);
 prate *= 10000;

 return prate;
}
