
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct st_secp256r1_key_exhchange_t {int priv; } ;
typedef struct st_secp256r1_key_exhchange_t uint8_t ;
typedef int ptls_key_exchange_context_t ;
struct TYPE_5__ {scalar_t__ len; scalar_t__* base; } ;
typedef TYPE_1__ ptls_iovec_t ;


 int PTLS_ALERT_DECRYPT_ERROR ;
 int PTLS_ERROR_NO_MEMORY ;
 scalar_t__ SECP256R1_PUBLIC_KEY_SIZE ;
 int SECP256R1_SHARED_SECRET_SIZE ;
 scalar_t__ TYPE_UNCOMPRESSED_PUBLIC_KEY ;
 int free (struct st_secp256r1_key_exhchange_t*) ;
 scalar_t__ malloc (int ) ;
 int ptls_clear_memory (int ,int) ;
 TYPE_1__ ptls_iovec_init (struct st_secp256r1_key_exhchange_t*,int ) ;
 int uECC_secp256r1 () ;
 int uECC_shared_secret (scalar_t__*,int ,struct st_secp256r1_key_exhchange_t*,int ) ;

__attribute__((used)) static int secp256r1_on_exchange(ptls_key_exchange_context_t **_ctx, int release, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    struct st_secp256r1_key_exhchange_t *ctx = (struct st_secp256r1_key_exhchange_t *)*_ctx;
    uint8_t *secbytes = ((void*)0);
    int ret;

    if (secret == ((void*)0)) {
        ret = 0;
        goto Exit;
    }

    if (peerkey.len != SECP256R1_PUBLIC_KEY_SIZE || peerkey.base[0] != TYPE_UNCOMPRESSED_PUBLIC_KEY) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    if ((secbytes = (uint8_t *)malloc(SECP256R1_SHARED_SECRET_SIZE)) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }
    if (!uECC_shared_secret(peerkey.base + 1, ctx->priv, secbytes, uECC_secp256r1())) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    *secret = ptls_iovec_init(secbytes, SECP256R1_SHARED_SECRET_SIZE);
    ret = 0;

Exit:
    if (ret != 0)
        free(secbytes);
    if (release) {
        ptls_clear_memory(ctx->priv, sizeof(ctx->priv));
        free(ctx);
        *_ctx = ((void*)0);
    }
    return ret;
}
