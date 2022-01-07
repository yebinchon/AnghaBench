
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_fractional_divider {int flags; int reg; } ;


 int CLK_FRAC_DIVIDER_BIG_ENDIAN ;
 int iowrite32be (int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void clk_fd_writel(struct clk_fractional_divider *fd, u32 val)
{
 if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
  iowrite32be(val, fd->reg);
 else
  writel(val, fd->reg);
}
