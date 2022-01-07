
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct clk_si5341_synth {TYPE_1__* data; int index; } ;
struct TYPE_2__ {int regmap; } ;


 int BIT (int ) ;
 int SI5341_SYNTH_N_NUM (int ) ;
 int SI5341_SYNTH_N_PIBYP ;
 int SI5341_SYNTH_N_UPD (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int si5341_encode_44_32 (int ,int ,int ,int ) ;

__attribute__((used)) static int si5341_synth_program(struct clk_si5341_synth *synth,
 u64 n_num, u32 n_den, bool is_integer)
{
 int err;
 u8 index = synth->index;

 err = si5341_encode_44_32(synth->data->regmap,
   SI5341_SYNTH_N_NUM(index), n_num, n_den);

 err = regmap_update_bits(synth->data->regmap,
  SI5341_SYNTH_N_PIBYP, BIT(index), is_integer ? BIT(index) : 0);
 if (err < 0)
  return err;

 return regmap_write(synth->data->regmap,
  SI5341_SYNTH_N_UPD(index), 0x01);
}
