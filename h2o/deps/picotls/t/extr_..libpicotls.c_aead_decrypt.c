
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_ptls_traffic_protection_t {int seq; int aead; } ;
typedef int aad ;


 int PTLS_ALERT_BAD_RECORD_MAC ;
 size_t SIZE_MAX ;
 int build_aad (int *,size_t) ;
 size_t ptls_aead_decrypt (int ,void*,void const*,size_t,int ,int *,int) ;

__attribute__((used)) static int aead_decrypt(struct st_ptls_traffic_protection_t *ctx, void *output, size_t *outlen, const void *input, size_t inlen)
{
    uint8_t aad[5];

    build_aad(aad, inlen);
    if ((*outlen = ptls_aead_decrypt(ctx->aead, output, input, inlen, ctx->seq, aad, sizeof(aad))) == SIZE_MAX)
        return PTLS_ALERT_BAD_RECORD_MAC;
    ++ctx->seq;
    return 0;
}
