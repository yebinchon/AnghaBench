
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hsdk_pll_clk {scalar_t__ regs; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 hsdk_pll_read(struct hsdk_pll_clk *clk, u32 reg)
{
 return ioread32(clk->regs + reg);
}
