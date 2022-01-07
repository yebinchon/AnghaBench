
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_multiplier {int flags; int reg; } ;


 int CLK_MULTIPLIER_BIG_ENDIAN ;
 int ioread32be (int ) ;
 int readl (int ) ;

__attribute__((used)) static inline u32 clk_mult_readl(struct clk_multiplier *mult)
{
 if (mult->flags & CLK_MULTIPLIER_BIG_ENDIAN)
  return ioread32be(mult->reg);

 return readl(mult->reg);
}
