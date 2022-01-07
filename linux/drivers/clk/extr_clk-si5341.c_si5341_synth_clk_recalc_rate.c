
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clk_si5341_synth {TYPE_1__* data; int index; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int freq_vco; int regmap; } ;


 int SI5341_SYNTH_N_NUM (int ) ;
 int div64_u64 (int,int) ;
 int si5341_decode_44_32 (int ,int ,int*,int*) ;
 struct clk_si5341_synth* to_clk_si5341_synth (struct clk_hw*) ;

__attribute__((used)) static unsigned long si5341_synth_clk_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_si5341_synth *synth = to_clk_si5341_synth(hw);
 u64 f;
 u64 n_num;
 u32 n_den;
 int err;

 err = si5341_decode_44_32(synth->data->regmap,
   SI5341_SYNTH_N_NUM(synth->index), &n_num, &n_den);
 if (err < 0)
  return err;





 f = synth->data->freq_vco;
 f *= n_den >> 4;



 f = div64_u64(f, (n_num >> 4));

 return f;
}
