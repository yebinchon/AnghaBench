
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hook_meta {int meta_data; } ;


 int evrpc_meta_data_free (int *) ;
 int mm_free (struct evrpc_hook_meta*) ;

__attribute__((used)) static void
evrpc_hook_context_free_(struct evrpc_hook_meta *ctx)
{
 evrpc_meta_data_free(&ctx->meta_data);
 mm_free(ctx);
}
