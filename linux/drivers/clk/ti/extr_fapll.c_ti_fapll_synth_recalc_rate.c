
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fapll_synth {scalar_t__ div; scalar_t__ freq; int fd; } ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_UP_ULL (int,int) ;
 int SYNTH_MAX_DIV_M ;
 int SYNTH_PHASE_K ;
 int do_div (int,int) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ ti_fapll_clock_is_bypass (int ) ;
 struct fapll_synth* to_synth (struct clk_hw*) ;

__attribute__((used)) static unsigned long ti_fapll_synth_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct fapll_synth *synth = to_synth(hw);
 u32 synth_div_m;
 u64 rate;


 if (!synth->div)
  return 32768;






 if (ti_fapll_clock_is_bypass(synth->fd))
  return parent_rate;

 rate = parent_rate;






 if (synth->freq) {
  u32 v, synth_int_div, synth_frac_div, synth_div_freq;

  v = readl_relaxed(synth->freq);
  synth_int_div = (v >> 24) & 0xf;
  synth_frac_div = v & 0xffffff;
  synth_div_freq = (synth_int_div * 10000000) + synth_frac_div;
  rate *= 10000000;
  do_div(rate, synth_div_freq);
  rate *= SYNTH_PHASE_K;
 }


 synth_div_m = readl_relaxed(synth->div) & SYNTH_MAX_DIV_M;

 return DIV_ROUND_UP_ULL(rate, synth_div_m);
}
