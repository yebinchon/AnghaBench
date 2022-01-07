
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_pll_clk {scalar_t__ base; } ;


 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline unsigned int i2s_pll_read(struct i2s_pll_clk *clk,
  unsigned int reg)
{
 return readl_relaxed(clk->base + reg);
}
