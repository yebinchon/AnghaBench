
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_picotls_hmac_context_t {TYPE_1__* algo; int key; TYPE_2__* hash; } ;
typedef int ptls_hash_final_mode_t ;
typedef int ptls_hash_context_t ;
struct TYPE_6__ {int (* final ) (TYPE_2__*,void*,int) ;int (* update ) (TYPE_2__*,void*,int ) ;} ;
struct TYPE_5__ {int block_size; int digest_size; } ;




 int PTLS_HASH_FINAL_MODE_SNAPSHOT ;
 int assert (int) ;
 int free (struct st_picotls_hmac_context_t*) ;
 int hmac_apply_key (struct st_picotls_hmac_context_t*,int) ;
 int ptls_clear_memory (int ,int ) ;
 int stub1 (TYPE_2__*,void*,int) ;
 int stub2 (TYPE_2__*,void*,int ) ;
 int stub3 (TYPE_2__*,void*,int) ;

__attribute__((used)) static void hmac_final(ptls_hash_context_t *_ctx, void *md, ptls_hash_final_mode_t mode)
{
    struct st_picotls_hmac_context_t *ctx = (struct st_picotls_hmac_context_t *)_ctx;

    assert(mode != PTLS_HASH_FINAL_MODE_SNAPSHOT || !"not supported");

    if (md != ((void*)0)) {
        ctx->hash->final(ctx->hash, md, 128);
        hmac_apply_key(ctx, 0x5c);
        ctx->hash->update(ctx->hash, md, ctx->algo->digest_size);
    }
    ctx->hash->final(ctx->hash, md, mode);

    switch (mode) {
    case 129:
        ptls_clear_memory(ctx->key, ctx->algo->block_size);
        free(ctx);
        break;
    case 128:
        hmac_apply_key(ctx, 0x36);
        break;
    default:
        assert(!"FIXME");
        break;
    }
}
