
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_x9_62_keyex_context_t {int super; int * privkey; } ;
typedef int ptls_key_exchange_context_t ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ ptls_key_exchange_algorithm_t ;
typedef int EC_GROUP ;


 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int PTLS_ERROR_LIBRARY ;
 int * ecdh_gerenate_key (int *) ;
 int x9_62_create_context (TYPE_1__*,struct st_x9_62_keyex_context_t**) ;
 int x9_62_free_context (struct st_x9_62_keyex_context_t*) ;
 int x9_62_setup_pubkey (struct st_x9_62_keyex_context_t*) ;

__attribute__((used)) static int x9_62_create_key_exchange(ptls_key_exchange_algorithm_t *algo, ptls_key_exchange_context_t **_ctx)
{
    EC_GROUP *group = ((void*)0);
    struct st_x9_62_keyex_context_t *ctx = ((void*)0);
    int ret;


    if ((group = EC_GROUP_new_by_curve_name((int)algo->data)) == ((void*)0)) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if ((ret = x9_62_create_context(algo, &ctx)) != 0)
        goto Exit;
    if ((ctx->privkey = ecdh_gerenate_key(group)) == ((void*)0)) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if ((ret = x9_62_setup_pubkey(ctx)) != 0)
        goto Exit;
    ret = 0;

Exit:
    if (group != ((void*)0))
        EC_GROUP_free(group);
    if (ret == 0) {
        *_ctx = &ctx->super;
    } else {
        if (ctx != ((void*)0))
            x9_62_free_context(ctx);
        *_ctx = ((void*)0);
    }

    return ret;
}
