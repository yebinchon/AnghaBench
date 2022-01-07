
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_rfc6979_hmac_sha256 ;
typedef int secp256k1_gej ;
typedef int secp256k1_fe ;
struct TYPE_4__ {int initial; int blind; } ;
typedef TYPE_1__ secp256k1_ecmult_gen_context ;
typedef int keydata ;


 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int secp256k1_ecmult_gen (TYPE_1__*,int *,int *) ;
 int secp256k1_fe_clear (int *) ;
 scalar_t__ secp256k1_fe_is_zero (int *) ;
 int secp256k1_fe_set_b32 (int *,unsigned char*) ;
 int secp256k1_ge_const_g ;
 int secp256k1_gej_clear (int *) ;
 int secp256k1_gej_neg (int *,int *) ;
 int secp256k1_gej_rescale (int *,int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;
 int secp256k1_rfc6979_hmac_sha256_finalize (int *) ;
 int secp256k1_rfc6979_hmac_sha256_generate (int *,unsigned char*,int) ;
 int secp256k1_rfc6979_hmac_sha256_initialize (int *,unsigned char*,int) ;
 int secp256k1_scalar_clear (int *) ;
 int secp256k1_scalar_get_b32 (unsigned char*,int *) ;
 scalar_t__ secp256k1_scalar_is_zero (int *) ;
 int secp256k1_scalar_negate (int *,int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int*) ;
 int secp256k1_scalar_set_int (int *,int) ;

__attribute__((used)) static void secp256k1_ecmult_gen_blind(secp256k1_ecmult_gen_context *ctx, const unsigned char *seed32) {
    secp256k1_scalar b;
    secp256k1_gej gb;
    secp256k1_fe s;
    unsigned char nonce32[32];
    secp256k1_rfc6979_hmac_sha256 rng;
    int retry;
    unsigned char keydata[64] = {0};
    if (seed32 == ((void*)0)) {

        secp256k1_gej_set_ge(&ctx->initial, &secp256k1_ge_const_g);
        secp256k1_gej_neg(&ctx->initial, &ctx->initial);
        secp256k1_scalar_set_int(&ctx->blind, 1);
    }

    secp256k1_scalar_get_b32(nonce32, &ctx->blind);




    memcpy(keydata, nonce32, 32);
    if (seed32 != ((void*)0)) {
        memcpy(keydata + 32, seed32, 32);
    }
    secp256k1_rfc6979_hmac_sha256_initialize(&rng, keydata, seed32 ? 64 : 32);
    memset(keydata, 0, sizeof(keydata));

    do {
        secp256k1_rfc6979_hmac_sha256_generate(&rng, nonce32, 32);
        retry = !secp256k1_fe_set_b32(&s, nonce32);
        retry = retry || secp256k1_fe_is_zero(&s);
    } while (retry);

    secp256k1_gej_rescale(&ctx->initial, &s);
    secp256k1_fe_clear(&s);
    do {
        secp256k1_rfc6979_hmac_sha256_generate(&rng, nonce32, 32);
        secp256k1_scalar_set_b32(&b, nonce32, &retry);

        retry = retry || secp256k1_scalar_is_zero(&b);
    } while (retry);
    secp256k1_rfc6979_hmac_sha256_finalize(&rng);
    memset(nonce32, 0, 32);
    secp256k1_ecmult_gen(ctx, &gb, &b);
    secp256k1_scalar_negate(&b, &b);
    ctx->blind = b;
    ctx->initial = gb;
    secp256k1_scalar_clear(&b);
    secp256k1_gej_clear(&gb);
}
