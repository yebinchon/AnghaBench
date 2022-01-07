
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int PXA_CORE_RUN ;
 int PXA_CORE_TURBO ;

__attribute__((used)) static u8 clk_pxa25x_core_get_parent(struct clk_hw *hw)
{
 unsigned long clkcfg;
 unsigned int t;

 asm("mrc\tp14, 0, %0, c6, c0, 0" : "=r" (clkcfg));
 t = clkcfg & (1 << 0);
 if (t)
  return PXA_CORE_TURBO;
 return PXA_CORE_RUN;
}
