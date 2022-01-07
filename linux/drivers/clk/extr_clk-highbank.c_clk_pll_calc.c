
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long HB_PLL_MAX_FREQ ;
 unsigned long HB_PLL_MIN_FREQ ;
 unsigned long HB_PLL_VCO_MIN_FREQ ;

__attribute__((used)) static void clk_pll_calc(unsigned long rate, unsigned long ref_freq,
   u32 *pdivq, u32 *pdivf)
{
 u32 divq, divf;
 unsigned long vco_freq;

 if (rate < HB_PLL_MIN_FREQ)
  rate = HB_PLL_MIN_FREQ;
 if (rate > HB_PLL_MAX_FREQ)
  rate = HB_PLL_MAX_FREQ;

 for (divq = 1; divq <= 6; divq++) {
  if ((rate * (1 << divq)) >= HB_PLL_VCO_MIN_FREQ)
   break;
 }

 vco_freq = rate * (1 << divq);
 divf = (vco_freq + (ref_freq / 2)) / ref_freq;
 divf--;

 *pdivq = divq;
 *pdivf = divf;
}
