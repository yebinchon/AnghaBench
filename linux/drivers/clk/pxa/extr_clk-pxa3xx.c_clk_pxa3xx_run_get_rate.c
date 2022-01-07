
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long ACCR_XN_MASK ;
 unsigned long ACSR ;

__attribute__((used)) static unsigned long clk_pxa3xx_run_get_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 unsigned long acsr = ACSR;
 unsigned int xn = (acsr & ACCR_XN_MASK) >> 8;
 unsigned int t, xclkcfg;


 __asm__ __volatile__("mrc\tp14, 0, %0, c6, c0, 0" : "=r"(xclkcfg));
 t = xclkcfg & 0x1;

 return t ? (parent_rate / xn) * 2 : parent_rate;
}
