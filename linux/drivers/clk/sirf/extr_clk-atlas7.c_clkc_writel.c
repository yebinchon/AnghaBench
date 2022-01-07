
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int sirfsoc_clk_vbase ;
 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void clkc_writel(u32 val, unsigned reg)
{
 writel(val, sirfsoc_clk_vbase + reg);
}
