
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_omap_reg {size_t index; scalar_t__ offset; scalar_t__ ptr; } ;
struct clk_iomap {scalar_t__ mem; scalar_t__ regmap; } ;


 struct clk_iomap** clk_memmaps ;
 int readl_relaxed (scalar_t__) ;
 int regmap_read (scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static u32 clk_memmap_readl(const struct clk_omap_reg *reg)
{
 u32 val;
 struct clk_iomap *io = clk_memmaps[reg->index];

 if (reg->ptr)
  val = readl_relaxed(reg->ptr);
 else if (io->regmap)
  regmap_read(io->regmap, reg->offset, &val);
 else
  val = readl_relaxed(io->mem + reg->offset);

 return val;
}
