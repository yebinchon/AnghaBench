
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {int attached_clk; struct clk* clk; } ;
struct regmap {struct regmap_mmio_context* bus_context; } ;
struct clk {int dummy; } ;


 int clk_prepare (struct clk*) ;

int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk)
{
 struct regmap_mmio_context *ctx = map->bus_context;

 ctx->clk = clk;
 ctx->attached_clk = 1;

 return clk_prepare(ctx->clk);
}
