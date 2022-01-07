
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {scalar_t__ regs; } ;


 unsigned int ioread32be (scalar_t__) ;

__attribute__((used)) static unsigned int regmap_mmio_read32be(struct regmap_mmio_context *ctx,
             unsigned int reg)
{
 return ioread32be(ctx->regs + reg);
}
