
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {scalar_t__ regs; } ;


 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void regmap_mmio_write16le(struct regmap_mmio_context *ctx,
      unsigned int reg,
      unsigned int val)
{
 writew(val, ctx->regs + reg);
}
