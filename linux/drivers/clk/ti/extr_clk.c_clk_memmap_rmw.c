
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_omap_reg {size_t index; scalar_t__ offset; scalar_t__ ptr; } ;
struct clk_iomap {scalar_t__ mem; scalar_t__ regmap; } ;


 int _clk_rmw (int ,int ,scalar_t__) ;
 struct clk_iomap** clk_memmaps ;
 int regmap_update_bits (scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void clk_memmap_rmw(u32 val, u32 mask, const struct clk_omap_reg *reg)
{
 struct clk_iomap *io = clk_memmaps[reg->index];

 if (reg->ptr) {
  _clk_rmw(val, mask, reg->ptr);
 } else if (io->regmap) {
  regmap_update_bits(io->regmap, reg->offset, mask, val);
 } else {
  _clk_rmw(val, mask, io->mem + reg->offset);
 }
}
