
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_ctx {int dummy; } ;


 int kfree (struct sunxi_rsb_ctx*) ;

__attribute__((used)) static void regmap_sunxi_rsb_free_ctx(void *context)
{
 struct sunxi_rsb_ctx *ctx = context;

 kfree(ctx);
}
