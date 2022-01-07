
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {unsigned int (* reg_read ) (struct regmap_mmio_context*,unsigned int) ;int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned int stub1 (struct regmap_mmio_context*,unsigned int) ;

__attribute__((used)) static int regmap_mmio_read(void *context, unsigned int reg, unsigned int *val)
{
 struct regmap_mmio_context *ctx = context;
 int ret;

 if (!IS_ERR(ctx->clk)) {
  ret = clk_enable(ctx->clk);
  if (ret < 0)
   return ret;
 }

 *val = ctx->reg_read(ctx, reg);

 if (!IS_ERR(ctx->clk))
  clk_disable(ctx->clk);

 return 0;
}
