
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_divider {int flags; int reg; } ;


 int CLK_DIVIDER_BIG_ENDIAN ;
 int iowrite32be (int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void clk_div_writel(struct clk_divider *divider, u32 val)
{
 if (divider->flags & CLK_DIVIDER_BIG_ENDIAN)
  iowrite32be(val, divider->reg);
 else
  writel(val, divider->reg);
}
