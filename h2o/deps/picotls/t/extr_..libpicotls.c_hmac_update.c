
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_picotls_hmac_context_t {TYPE_1__* hash; } ;
typedef int ptls_hash_context_t ;
struct TYPE_2__ {int (* update ) (TYPE_1__*,void const*,size_t) ;} ;


 int stub1 (TYPE_1__*,void const*,size_t) ;

__attribute__((used)) static void hmac_update(ptls_hash_context_t *_ctx, const void *src, size_t len)
{
    struct st_picotls_hmac_context_t *ctx = (struct st_picotls_hmac_context_t *)_ctx;
    ctx->hash->update(ctx->hash, src, len);
}
