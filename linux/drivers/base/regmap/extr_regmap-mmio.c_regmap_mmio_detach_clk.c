
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_mmio_context {int attached_clk; int * clk; } ;
struct regmap {struct regmap_mmio_context* bus_context; } ;


 int clk_unprepare (int *) ;

void regmap_mmio_detach_clk(struct regmap *map)
{
 struct regmap_mmio_context *ctx = map->bus_context;

 clk_unprepare(ctx->clk);

 ctx->attached_clk = 0;
 ctx->clk = ((void*)0);
}
