
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fapll_data {int base; } ;
struct clk_hw {int dummy; } ;


 int do_div (int,int) ;
 int readl_relaxed (int ) ;
 scalar_t__ ti_fapll_clock_is_bypass (struct fapll_data*) ;
 struct fapll_data* to_fapll (struct clk_hw*) ;

__attribute__((used)) static unsigned long ti_fapll_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct fapll_data *fd = to_fapll(hw);
 u32 fapll_n, fapll_p, v;
 u64 rate;

 if (ti_fapll_clock_is_bypass(fd))
  return parent_rate;

 rate = parent_rate;


 v = readl_relaxed(fd->base);
 fapll_p = (v >> 8) & 0xff;
 if (fapll_p)
  do_div(rate, fapll_p);
 fapll_n = v >> 16;
 if (fapll_n)
  rate *= fapll_n;

 return rate;
}
