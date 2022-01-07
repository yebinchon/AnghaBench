
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int REFO_DIV_MASK ;
 int REFO_TRIM_MAX ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static void roclk_calc_div_trim(unsigned long rate,
    unsigned long parent_rate,
    u32 *rodiv_p, u32 *rotrim_p)
{
 u32 div, rotrim, rodiv;
 u64 frac;
 if (parent_rate <= rate) {
  div = 0;
  frac = 0;
  rodiv = 0;
  rotrim = 0;
 } else {
  div = parent_rate / (rate << 1);
  frac = parent_rate;
  frac <<= 8;
  do_div(frac, rate);
  frac -= (u64)(div << 9);

  rodiv = (div > REFO_DIV_MASK) ? REFO_DIV_MASK : div;
  rotrim = (frac >= REFO_TRIM_MAX) ? REFO_TRIM_MAX : frac;
 }

 if (rodiv_p)
  *rodiv_p = rodiv;

 if (rotrim_p)
  *rotrim_p = rotrim;
}
