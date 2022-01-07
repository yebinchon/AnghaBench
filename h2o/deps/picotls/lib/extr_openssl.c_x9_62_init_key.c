
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_x9_62_keyex_context_t {int super; int * privkey; } ;
typedef int ptls_key_exchange_context_t ;
typedef int ptls_key_exchange_algorithm_t ;
typedef int EC_KEY ;


 int x9_62_create_context (int *,struct st_x9_62_keyex_context_t**) ;
 int x9_62_free_context (struct st_x9_62_keyex_context_t*) ;
 int x9_62_setup_pubkey (struct st_x9_62_keyex_context_t*) ;

__attribute__((used)) static int x9_62_init_key(ptls_key_exchange_algorithm_t *algo, ptls_key_exchange_context_t **_ctx, EC_KEY *eckey)
{
    struct st_x9_62_keyex_context_t *ctx = ((void*)0);
    int ret;

    if ((ret = x9_62_create_context(algo, &ctx)) != 0)
        goto Exit;
    ctx->privkey = eckey;
    if ((ret = x9_62_setup_pubkey(ctx)) != 0)
        goto Exit;
    ret = 0;

Exit:
    if (ret == 0) {
        *_ctx = &ctx->super;
    } else {
        if (ctx != ((void*)0))
            x9_62_free_context(ctx);
        *_ctx = ((void*)0);
    }
    return ret;
}
