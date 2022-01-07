
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct st_x9_62_keyex_context_t* base; } ;
struct TYPE_4__ {TYPE_1__ pubkey; } ;
struct st_x9_62_keyex_context_t {int * bn_ctx; int * privkey; TYPE_2__ super; } ;


 int BN_CTX_free (int *) ;
 int EC_KEY_free (int *) ;
 int free (struct st_x9_62_keyex_context_t*) ;

__attribute__((used)) static void x9_62_free_context(struct st_x9_62_keyex_context_t *ctx)
{
    free(ctx->super.pubkey.base);
    if (ctx->privkey != ((void*)0))
        EC_KEY_free(ctx->privkey);
    if (ctx->bn_ctx != ((void*)0))
        BN_CTX_free(ctx->bn_ctx);
    free(ctx);
}
