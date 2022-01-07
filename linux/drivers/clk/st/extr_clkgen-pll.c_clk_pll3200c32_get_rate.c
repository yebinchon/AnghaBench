
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_pll {int idf; int ndiv; } ;



__attribute__((used)) static int clk_pll3200c32_get_rate(unsigned long input, struct stm_pll *pll,
   unsigned long *rate)
{
 if (!pll->idf)
  pll->idf = 1;

 *rate = ((2 * (input / 1000) * pll->ndiv) / pll->idf) * 1000;

 return 0;
}
