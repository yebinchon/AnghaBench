
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct fapll_synth {int div; scalar_t__ freq; struct fapll_data* fd; } ;
struct fapll_data {int dummy; } ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 unsigned long SYNTH_LDMDIV1 ;
 unsigned long SYNTH_MAX_DIV_M ;
 unsigned long readl_relaxed (int ) ;
 scalar_t__ ti_fapll_clock_is_bypass (struct fapll_data*) ;
 unsigned long ti_fapll_synth_get_frac_rate (struct clk_hw*,unsigned long) ;
 unsigned long ti_fapll_synth_set_frac_rate (struct fapll_synth*,unsigned long,unsigned long) ;
 struct fapll_synth* to_synth (struct clk_hw*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int ti_fapll_synth_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct fapll_synth *synth = to_synth(hw);
 struct fapll_data *fd = synth->fd;
 unsigned long frac_rate, post_rate = 0;
 u32 post_div_m = 0, v;

 if (ti_fapll_clock_is_bypass(fd) || !synth->div || !rate)
  return -EINVAL;


 frac_rate = ti_fapll_synth_get_frac_rate(hw, parent_rate);
 if (frac_rate < rate) {
  if (!synth->freq)
   return -EINVAL;
 } else {
  post_div_m = DIV_ROUND_UP(frac_rate, rate);
  if (post_div_m && (post_div_m <= SYNTH_MAX_DIV_M))
   post_rate = DIV_ROUND_UP(frac_rate, post_div_m);
  if (!synth->freq && !post_rate)
   return -EINVAL;
 }


 if ((post_rate != rate) && synth->freq)
  post_div_m = ti_fapll_synth_set_frac_rate(synth,
         rate,
         parent_rate);

 v = readl_relaxed(synth->div);
 v &= ~SYNTH_MAX_DIV_M;
 v |= post_div_m;
 v |= SYNTH_LDMDIV1;
 writel_relaxed(v, synth->div);

 return 0;
}
