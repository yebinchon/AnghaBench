
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {int clk; int attached_clk; } ;


 int IS_ERR (int ) ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 int kfree (void*) ;

__attribute__((used)) static void regmap_mmio_free_context(void *context)
{
 struct regmap_mmio_context *ctx = context;

 if (!IS_ERR(ctx->clk)) {
  clk_unprepare(ctx->clk);
  if (!ctx->attached_clk)
   clk_put(ctx->clk);
 }
 kfree(context);
}
