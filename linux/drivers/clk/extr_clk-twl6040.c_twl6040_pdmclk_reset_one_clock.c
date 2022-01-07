
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040_pdmclk {int twl6040; } ;


 int TWL6040_HPLLRST ;
 int twl6040_clear_bits (int ,unsigned int,int const) ;
 int twl6040_set_bits (int ,unsigned int,int const) ;

__attribute__((used)) static int twl6040_pdmclk_reset_one_clock(struct twl6040_pdmclk *pdmclk,
       unsigned int reg)
{
 const u8 reset_mask = TWL6040_HPLLRST;
 int ret;

 ret = twl6040_set_bits(pdmclk->twl6040, reg, reset_mask);
 if (ret < 0)
  return ret;

 ret = twl6040_clear_bits(pdmclk->twl6040, reg, reset_mask);
 if (ret < 0)
  return ret;

 return 0;
}
