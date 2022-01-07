
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_multiplier {int flags; int reg; } ;


 int CLK_MULTIPLIER_BIG_ENDIAN ;
 int iowrite32be (int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void clk_mult_writel(struct clk_multiplier *mult, u32 val)
{
 if (mult->flags & CLK_MULTIPLIER_BIG_ENDIAN)
  iowrite32be(val, mult->reg);
 else
  writel(val, mult->reg);
}
