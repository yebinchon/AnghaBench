
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR71XX_AHB_DIV_MASK ;
 int AR71XX_AHB_DIV_SHIFT ;
 int AR71XX_CPU_DIV_MASK ;
 int AR71XX_CPU_DIV_SHIFT ;
 int AR71XX_DDR_DIV_MASK ;
 int AR71XX_DDR_DIV_SHIFT ;
 scalar_t__ AR71XX_PLL_BASE ;
 int AR71XX_PLL_DIV_MASK ;
 int AR71XX_PLL_DIV_SHIFT ;
 scalar_t__ AR71XX_PLL_REG_CPU_CONFIG ;
 int AR91XX_AHB_DIV_MASK ;
 int AR91XX_AHB_DIV_SHIFT ;
 int AR91XX_DDR_DIV_MASK ;
 int AR91XX_DDR_DIV_SHIFT ;
 int AR91XX_PLL_DIV_MASK ;
 int AR91XX_PLL_DIV_SHIFT ;
 scalar_t__ AR91XX_PLL_REG_CPU_CONFIG ;
 int KSEG1ADDR (scalar_t__) ;
 int readl (int ) ;

void
ar71xx_sys_frequency(u32 *cpu_freq, u32 *ddr_freq, u32 *ahb_freq)
{

    u32 pll, pll_div, cpu_div, ahb_div, ddr_div, freq;

    pll = readl(KSEG1ADDR(AR71XX_PLL_REG_CPU_CONFIG + AR71XX_PLL_BASE));

    pll_div =
        ((pll & AR71XX_PLL_DIV_MASK) >> AR71XX_PLL_DIV_SHIFT) + 1;

    cpu_div =
        ((pll & AR71XX_CPU_DIV_MASK) >> AR71XX_CPU_DIV_SHIFT) + 1;

    ddr_div =
        ((pll & AR71XX_DDR_DIV_MASK) >> AR71XX_DDR_DIV_SHIFT) + 1;

    ahb_div =
       (((pll & AR71XX_AHB_DIV_MASK) >> AR71XX_AHB_DIV_SHIFT) + 1)*2;

    freq = pll_div * 40000000;

    if (cpu_freq)
        *cpu_freq = freq/cpu_div;

    if (ddr_freq)
        *ddr_freq = freq/ddr_div;

    if (ahb_freq)
        *ahb_freq = (freq/cpu_div)/ahb_div;
}
