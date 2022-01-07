
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_si544_muldiv {int hs_div; scalar_t__ fb_div_int; scalar_t__ fb_div_frac; int ls_div_bits; } ;


 int BIT (int ) ;
 int FXO ;
 int do_div (int,int) ;

__attribute__((used)) static unsigned long si544_calc_center_rate(
  const struct clk_si544_muldiv *settings)
{
 u32 d = settings->hs_div * BIT(settings->ls_div_bits);
 u64 vco;


 vco = (u64)settings->fb_div_frac * FXO;
 vco += (FXO / 2);
 vco >>= 32;


 vco += (u64)settings->fb_div_int * FXO;


 do_div(vco, d);

 return vco;
}
