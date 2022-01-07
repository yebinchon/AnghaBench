
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_pll {unsigned long idf; unsigned long ndiv; int cp; } ;


 int EINVAL ;
 long abs (unsigned long) ;

__attribute__((used)) static int clk_pll3200c32_get_params(unsigned long input, unsigned long output,
     struct stm_pll *pll)
{
 unsigned long i, n;
 unsigned long deviation = ~0;
 unsigned long new_freq;
 long new_deviation;

 static const unsigned char cp_table[] = {
  48, 56, 64, 72, 80, 88, 96, 104, 112, 120,
  128, 136, 144, 152, 160, 168, 176, 184, 192
 };


 if (output < 800000000 || output > 1600000000)
  return -EINVAL;

 input /= 1000;
 output /= 1000;

 for (i = 1; i <= 7 && deviation; i++) {
  n = i * output / (2 * input);


  if (n < 8)
   continue;
  if (n > 200)
   break;

  new_freq = (input * 2 * n) / i;

  new_deviation = abs(new_freq - output);

  if (!new_deviation || new_deviation < deviation) {
   pll->idf = i;
   pll->ndiv = n;
   deviation = new_deviation;
  }
 }

 if (deviation == ~0)
  return -EINVAL;


 for (pll->cp = 6; pll->ndiv > cp_table[pll->cp-6]; (pll->cp)++)
  ;

 return 0;
}
