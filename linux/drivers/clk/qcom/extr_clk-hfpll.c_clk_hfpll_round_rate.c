
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfpll_data {unsigned long max_rate; int min_rate; } ;
struct clk_hw {int dummy; } ;
struct clk_hfpll {struct hfpll_data* d; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 unsigned long clamp (unsigned long,int ,unsigned long) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static long clk_hfpll_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 unsigned long rrate;

 rate = clamp(rate, hd->min_rate, hd->max_rate);

 rrate = DIV_ROUND_UP(rate, *parent_rate) * *parent_rate;
 if (rrate > hd->max_rate)
  rrate -= *parent_rate;

 return rrate;
}
