
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct clk_pll_layout {int dummy; } ;
struct TYPE_3__ {unsigned long min; unsigned long max; } ;
struct clk_pll_characteristics {int num_output; TYPE_2__* output; TYPE_1__ input; } ;
struct clk_pll {struct clk_pll_characteristics* characteristics; struct clk_pll_layout* layout; } ;
struct TYPE_4__ {long min; long max; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 long ERANGE ;
 unsigned long PLL_DIV_MAX ;
 unsigned long PLL_MUL_MAX (struct clk_pll_layout const*) ;
 unsigned long PLL_MUL_MIN ;
 unsigned long ULONG_MAX ;

__attribute__((used)) static long clk_pll_get_best_div_mul(struct clk_pll *pll, unsigned long rate,
         unsigned long parent_rate,
         u32 *div, u32 *mul,
         u32 *index) {
 const struct clk_pll_layout *layout = pll->layout;
 const struct clk_pll_characteristics *characteristics =
       pll->characteristics;
 unsigned long bestremainder = ULONG_MAX;
 unsigned long maxdiv, mindiv, tmpdiv;
 long bestrate = -ERANGE;
 unsigned long bestdiv;
 unsigned long bestmul;
 int i = 0;


 if (parent_rate < characteristics->input.min)
  return -ERANGE;







 mindiv = (parent_rate * PLL_MUL_MIN) / rate;
 if (!mindiv)
  mindiv = 1;

 if (parent_rate > characteristics->input.max) {
  tmpdiv = DIV_ROUND_UP(parent_rate, characteristics->input.max);
  if (tmpdiv > PLL_DIV_MAX)
   return -ERANGE;

  if (tmpdiv > mindiv)
   mindiv = tmpdiv;
 }





 maxdiv = DIV_ROUND_UP(parent_rate * PLL_MUL_MAX(layout), rate);
 if (maxdiv > PLL_DIV_MAX)
  maxdiv = PLL_DIV_MAX;






 for (tmpdiv = mindiv; tmpdiv <= maxdiv; tmpdiv++) {
  unsigned long remainder;
  unsigned long tmprate;
  unsigned long tmpmul;





  tmpmul = DIV_ROUND_CLOSEST(rate, parent_rate / tmpdiv);
  tmprate = (parent_rate / tmpdiv) * tmpmul;
  if (tmprate > rate)
   remainder = tmprate - rate;
  else
   remainder = rate - tmprate;






  if (remainder < bestremainder) {
   bestremainder = remainder;
   bestdiv = tmpdiv;
   bestmul = tmpmul;
   bestrate = tmprate;
  }





  if (!remainder)
   break;
 }


 if (bestrate < 0)
  return bestrate;


 for (i = 0; i < characteristics->num_output; i++) {
  if (bestrate >= characteristics->output[i].min &&
      bestrate <= characteristics->output[i].max)
   break;
 }

 if (i >= characteristics->num_output)
  return -ERANGE;

 if (div)
  *div = bestdiv;
 if (mul)
  *mul = bestmul - 1;
 if (index)
  *index = i;

 return bestrate;
}
