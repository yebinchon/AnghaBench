
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_aes_context ;


 int mem_clean (int *,int) ;

void cf_aes_finish(cf_aes_context *ctx)
{
  mem_clean(ctx, sizeof *ctx);
}
