
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct st_x25519_key_exchange_t {int priv; int pub; } ;
typedef int ptls_key_exchange_context_t ;
struct TYPE_5__ {scalar_t__ len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;


 int PTLS_ALERT_DECRYPT_ERROR ;
 scalar_t__ X25519_KEY_SIZE ;
 int free (struct st_x25519_key_exchange_t*) ;
 int ptls_clear_memory (int ,int) ;
 int x25519_derive_secret (TYPE_1__*,int ,int ,int *,int ) ;

__attribute__((used)) static int x25519_on_exchange(ptls_key_exchange_context_t **_ctx, int release, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    struct st_x25519_key_exchange_t *ctx = (struct st_x25519_key_exchange_t *)*_ctx;
    int ret;

    if (secret == ((void*)0)) {
        ret = 0;
        goto Exit;
    }

    if (peerkey.len != X25519_KEY_SIZE) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    ret = x25519_derive_secret(secret, ctx->priv, ctx->pub, ((void*)0), peerkey.base);

Exit:
    if (release) {
        ptls_clear_memory(ctx->priv, sizeof(ctx->priv));
        free(ctx);
        *_ctx = ((void*)0);
    }
    return ret;
}
