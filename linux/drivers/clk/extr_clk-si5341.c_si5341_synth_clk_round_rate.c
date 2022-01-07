
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct clk_si5341_synth {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long freq_vco; } ;


 int SI5341_SYNTH_N_MAX ;
 int SI5341_SYNTH_N_MIN ;
 int do_div (unsigned long,int ) ;
 struct clk_si5341_synth* to_clk_si5341_synth (struct clk_hw*) ;

__attribute__((used)) static long si5341_synth_clk_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 struct clk_si5341_synth *synth = to_clk_si5341_synth(hw);
 u64 f;


 f = synth->data->freq_vco;
 do_div(f, SI5341_SYNTH_N_MAX);
 if (rate < f)
  return f;

 f = synth->data->freq_vco;
 do_div(f, SI5341_SYNTH_N_MIN);
 if (rate > f)
  return f;

 return rate;
}
