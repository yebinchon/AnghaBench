
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_fractional_divider {int flags; int reg; } ;


 int CLK_FRAC_DIVIDER_BIG_ENDIAN ;
 int ioread32be (int ) ;
 int readl (int ) ;

__attribute__((used)) static inline u32 clk_fd_readl(struct clk_fractional_divider *fd)
{
 if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
  return ioread32be(fd->reg);

 return readl(fd->reg);
}
