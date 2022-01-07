
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int PXA_CORE_60Mhz ;
 int PXA_CORE_RUN ;
 int PXA_CORE_TURBO ;
 scalar_t__ pxa3xx_is_ring_osc_forced () ;

__attribute__((used)) static u8 clk_pxa3xx_core_get_parent(struct clk_hw *hw)
{
 unsigned long xclkcfg;
 unsigned int t;

 if (pxa3xx_is_ring_osc_forced())
  return PXA_CORE_60Mhz;


 __asm__ __volatile__("mrc\tp14, 0, %0, c6, c0, 0" : "=r"(xclkcfg));
 t = xclkcfg & 0x1;

 if (t)
  return PXA_CORE_TURBO;
 return PXA_CORE_RUN;
}
