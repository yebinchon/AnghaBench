
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct sam9x60_pll {unsigned long div; unsigned long mul; unsigned long frac; struct clk_pll_characteristics* characteristics; } ;
struct clk_pll_characteristics {TYPE_1__* output; int upll; } ;
struct TYPE_2__ {unsigned long min; unsigned long max; } ;


 unsigned long DIV_ROUND_CLOSEST_ULL (unsigned long,unsigned long) ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 long ERANGE ;
 unsigned long PLL_DIV_MAX ;
 unsigned long PLL_MUL_MAX ;
 unsigned long ULONG_MAX ;
 unsigned long UPLL_DIV ;
 unsigned long mult_frac (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static long sam9x60_pll_get_best_div_mul(struct sam9x60_pll *pll,
      unsigned long rate,
      unsigned long parent_rate,
      bool update)
{
 const struct clk_pll_characteristics *characteristics =
       pll->characteristics;
 unsigned long bestremainder = ULONG_MAX;
 unsigned long maxdiv, mindiv, tmpdiv;
 long bestrate = -ERANGE;
 unsigned long bestdiv = 0;
 unsigned long bestmul = 0;
 unsigned long bestfrac = 0;

 if (rate < characteristics->output[0].min ||
     rate > characteristics->output[0].max)
  return -ERANGE;

 if (!pll->characteristics->upll) {
  mindiv = parent_rate / rate;
  if (mindiv < 2)
   mindiv = 2;

  maxdiv = DIV_ROUND_UP(parent_rate * PLL_MUL_MAX, rate);
  if (maxdiv > PLL_DIV_MAX)
   maxdiv = PLL_DIV_MAX;
 } else {
  mindiv = maxdiv = UPLL_DIV;
 }

 for (tmpdiv = mindiv; tmpdiv <= maxdiv; tmpdiv++) {
  unsigned long remainder;
  unsigned long tmprate;
  unsigned long tmpmul;
  unsigned long tmpfrac = 0;





  tmpmul = mult_frac(rate, tmpdiv, parent_rate);
  tmprate = mult_frac(parent_rate, tmpmul, tmpdiv);
  remainder = rate - tmprate;

  if (remainder) {
   tmpfrac = DIV_ROUND_CLOSEST_ULL((u64)remainder * tmpdiv * (1 << 22),
       parent_rate);

   tmprate += DIV_ROUND_CLOSEST_ULL((u64)tmpfrac * parent_rate,
        tmpdiv * (1 << 22));

   if (tmprate > rate)
    remainder = tmprate - rate;
   else
    remainder = rate - tmprate;
  }






  if (remainder < bestremainder) {
   bestremainder = remainder;
   bestdiv = tmpdiv;
   bestmul = tmpmul;
   bestrate = tmprate;
   bestfrac = tmpfrac;
  }


  if (!remainder)
   break;
 }


 if (bestrate < characteristics->output[0].min &&
     bestrate > characteristics->output[0].max)
  return -ERANGE;

 if (update) {
  pll->div = bestdiv - 1;
  pll->mul = bestmul - 1;
  pll->frac = bestfrac;
 }

 return bestrate;
}
