
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_pll {unsigned long idf; unsigned long ndiv; } ;


 int EINVAL ;

__attribute__((used)) static int clk_pll4600c28_get_params(unsigned long input, unsigned long output,
     struct stm_pll *pll)
{

 unsigned long i, infin, n;
 unsigned long deviation = ~0;
 unsigned long new_freq, new_deviation;


 if (output < 19000000 || output > 3000000000u)
  return -EINVAL;


 for (i = 1; i <= 7 && deviation; i++) {

  infin = input / i;
  if (infin < 4000000 || infin > 50000000)
   continue;

  n = output / (infin * 2);
  if (n < 8 || n > 246)
   continue;
  if (n < 246)
   n++;

  for (; n >= 8 && deviation; n--) {
   new_freq = infin * 2 * n;
   if (new_freq < output)
    break;

   new_deviation = new_freq - output;
   if (!new_deviation || new_deviation < deviation) {
    pll->idf = i;
    pll->ndiv = n;
    deviation = new_deviation;
   }
  }
 }

 if (deviation == ~0)
  return -EINVAL;

 return 0;
}
