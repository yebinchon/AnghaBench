
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 unsigned long CDCE925_PLL_FREQUENCY_MAX ;
 unsigned long CDCE925_PLL_FREQUENCY_MIN ;
 unsigned long gcd (unsigned long,unsigned long) ;

__attribute__((used)) static void cdce925_pll_find_rate(unsigned long rate,
  unsigned long parent_rate, u16 *n, u16 *m)
{
 unsigned long un;
 unsigned long um;
 unsigned long g;

 if (rate <= parent_rate) {

  rate = parent_rate;
  *n = 0;
  *m = 0;
 } else {

  if (rate < CDCE925_PLL_FREQUENCY_MIN)
   rate = CDCE925_PLL_FREQUENCY_MIN;
  else if (rate > CDCE925_PLL_FREQUENCY_MAX)
   rate = CDCE925_PLL_FREQUENCY_MAX;

  g = gcd(rate, parent_rate);
  um = parent_rate / g;
  un = rate / g;

  while ((un > 4095) || (um > 511)) {
   un >>= 1;
   um >>= 1;
  }
  if (un == 0)
   un = 1;
  if (um == 0)
   um = 1;

  *n = un;
  *m = um;
 }
}
