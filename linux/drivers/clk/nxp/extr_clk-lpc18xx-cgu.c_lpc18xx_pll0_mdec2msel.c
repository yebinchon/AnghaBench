
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LPC18XX_PLL0_MSEL_MAX ;

__attribute__((used)) static u32 lpc18xx_pll0_mdec2msel(u32 x)
{
 int i;

 switch (x) {
 case 0x18003: return 1;
 case 0x10003: return 2;
 default:
  for (i = LPC18XX_PLL0_MSEL_MAX + 1; x != 0x4000 && i > 0; i--)
   x = ((x ^ x >> 14) & 1) | (x << 1 & 0x7fff);
  return i;
 }
}
