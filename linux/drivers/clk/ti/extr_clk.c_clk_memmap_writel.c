
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_omap_reg {size_t index; scalar_t__ offset; scalar_t__ ptr; } ;
struct clk_iomap {scalar_t__ mem; scalar_t__ regmap; } ;


 struct clk_iomap** clk_memmaps ;
 int regmap_write (scalar_t__,scalar_t__,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void clk_memmap_writel(u32 val, const struct clk_omap_reg *reg)
{
 struct clk_iomap *io = clk_memmaps[reg->index];

 if (reg->ptr)
  writel_relaxed(val, reg->ptr);
 else if (io->regmap)
  regmap_write(io->regmap, reg->offset, val);
 else
  writel_relaxed(val, io->mem + reg->offset);
}
