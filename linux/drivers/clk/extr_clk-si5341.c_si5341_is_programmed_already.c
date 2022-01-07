
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_si5341 {int regmap; } ;


 int ARRAY_SIZE (int *) ;
 int SI5341_PLL_M_DEN ;
 int get_unaligned_le32 (int *) ;
 int regmap_bulk_read (int ,int ,int *,int ) ;

__attribute__((used)) static int si5341_is_programmed_already(struct clk_si5341 *data)
{
 int err;
 u8 r[4];


 err = regmap_bulk_read(data->regmap, SI5341_PLL_M_DEN,
   r, ARRAY_SIZE(r));
 if (err < 0)
  return err;

 return !!get_unaligned_le32(r);
}
