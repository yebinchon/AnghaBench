
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_pubkey ;
typedef int secp256k1_ge ;
struct TYPE_4__ {int ecmult_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ secp256k1_eckey_pubkey_tweak_mul (int *,int *,int *) ;
 int secp256k1_ecmult_context_is_built (int *) ;
 scalar_t__ secp256k1_pubkey_load (TYPE_1__ const*,int *,int *) ;
 int secp256k1_pubkey_save (int *,int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char const*,int*) ;

int secp256k1_ec_pubkey_tweak_mul(const secp256k1_context* ctx, secp256k1_pubkey *pubkey, const unsigned char *tweak) {
    secp256k1_ge p;
    secp256k1_scalar factor;
    int ret = 0;
    int overflow = 0;
    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(secp256k1_ecmult_context_is_built(&ctx->ecmult_ctx));
    ARG_CHECK(pubkey != ((void*)0));
    ARG_CHECK(tweak != ((void*)0));

    secp256k1_scalar_set_b32(&factor, tweak, &overflow);
    ret = !overflow && secp256k1_pubkey_load(ctx, &p, pubkey);
    memset(pubkey, 0, sizeof(*pubkey));
    if (ret) {
        if (secp256k1_eckey_pubkey_tweak_mul(&ctx->ecmult_ctx, &p, &factor)) {
            secp256k1_pubkey_save(pubkey, &p);
        } else {
            ret = 0;
        }
    }

    return ret;
}
