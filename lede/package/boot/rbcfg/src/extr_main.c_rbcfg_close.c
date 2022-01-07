
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_ctx {struct rbcfg_ctx* mtd_device; } ;


 int free (struct rbcfg_ctx*) ;
 struct rbcfg_ctx* rbcfg_ctx ;

__attribute__((used)) static void
rbcfg_close(void)
{
 struct rbcfg_ctx *ctx;

 ctx = rbcfg_ctx;
 free(ctx->mtd_device);
 free(ctx);
}
