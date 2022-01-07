
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long readl (unsigned int) ;
 unsigned int sirfsoc_clk_vbase ;

__attribute__((used)) static inline unsigned long clkc_readl(unsigned reg)
{
 return readl(sirfsoc_clk_vbase + reg);
}
