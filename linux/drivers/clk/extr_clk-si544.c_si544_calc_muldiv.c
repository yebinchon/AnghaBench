
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u64 ;
typedef int u32 ;
struct clk_si544_muldiv {unsigned long ls_div_bits; int hs_div; int fb_div_int; int fb_div_frac; scalar_t__ delta_m; } ;


 int FVCO_MIN ;
 int FXO ;
 int HS_DIV_MAX ;
 int HS_DIV_MAX_ODD ;
 unsigned long MIN_HSDIV_FREQ ;
 int do_div (int,int) ;

__attribute__((used)) static int si544_calc_muldiv(struct clk_si544_muldiv *settings,
 unsigned long frequency)
{
 u64 vco;
 u32 ls_freq;
 u32 tmp;
 u8 res;


 ls_freq = frequency;
 settings->ls_div_bits = 0;

 if (frequency >= MIN_HSDIV_FREQ) {
  settings->ls_div_bits = 0;
 } else {
  res = 1;
  tmp = 2 * HS_DIV_MAX;
  while (tmp <= (HS_DIV_MAX * 32)) {
   if (((u64)frequency * tmp) >= FVCO_MIN)
    break;
   ++res;
   tmp <<= 1;
  }
  settings->ls_div_bits = res;
  ls_freq = frequency << res;
 }


 vco = FVCO_MIN + ls_freq - 1;
 do_div(vco, ls_freq);
 settings->hs_div = vco;


 if ((settings->hs_div & 1) &&
     (settings->hs_div > HS_DIV_MAX_ODD || settings->ls_div_bits))
  ++settings->hs_div;


 vco = (u64)ls_freq * settings->hs_div;


 tmp = do_div(vco, FXO);
 settings->fb_div_int = vco;


 vco = (u64)tmp << 32;
 vco += FXO / 2;
 do_div(vco, FXO);
 settings->fb_div_frac = vco;


 settings->delta_m = 0;

 return 0;
}
