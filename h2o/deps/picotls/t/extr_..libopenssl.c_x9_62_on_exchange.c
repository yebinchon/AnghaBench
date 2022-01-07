
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_x9_62_keyex_context_t {int privkey; int bn_ctx; } ;
typedef int ptls_key_exchange_context_t ;
typedef int ptls_iovec_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int * EC_KEY_get0_group (int ) ;
 int EC_POINT_free (int *) ;
 int PTLS_ALERT_DECODE_ERROR ;
 int ecdh_calc_secret (int *,int const*,int ,int *) ;
 int * x9_62_decode_point (int const*,int ,int ) ;
 int x9_62_free_context (struct st_x9_62_keyex_context_t*) ;

__attribute__((used)) static int x9_62_on_exchange(ptls_key_exchange_context_t **_ctx, int release, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    struct st_x9_62_keyex_context_t *ctx = (struct st_x9_62_keyex_context_t *)*_ctx;
    const EC_GROUP *group = EC_KEY_get0_group(ctx->privkey);
    EC_POINT *peer_point = ((void*)0);
    int ret;

    if (secret == ((void*)0)) {
        ret = 0;
        goto Exit;
    }

    if ((peer_point = x9_62_decode_point(group, peerkey, ctx->bn_ctx)) == ((void*)0)) {
        ret = PTLS_ALERT_DECODE_ERROR;
        goto Exit;
    }
    if ((ret = ecdh_calc_secret(secret, group, ctx->privkey, peer_point)) != 0)
        goto Exit;

Exit:
    if (peer_point != ((void*)0))
        EC_POINT_free(peer_point);
    if (release) {
        x9_62_free_context(ctx);
        *_ctx = ((void*)0);
    }
    return ret;
}
