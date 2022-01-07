
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_pll {int idf; unsigned long ndiv; } ;



__attribute__((used)) static int clk_pll4600c28_get_rate(unsigned long input, struct stm_pll *pll,
   unsigned long *rate)
{
 if (!pll->idf)
  pll->idf = 1;

 *rate = (input / pll->idf) * 2 * pll->ndiv;

 return 0;
}
