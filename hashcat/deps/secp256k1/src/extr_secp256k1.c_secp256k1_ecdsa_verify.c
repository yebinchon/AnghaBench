
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_pubkey ;
typedef int secp256k1_ge ;
typedef int secp256k1_ecdsa_signature ;
struct TYPE_5__ {int ecmult_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 scalar_t__ secp256k1_ecdsa_sig_verify (int *,int *,int *,int *,int *) ;
 int secp256k1_ecdsa_signature_load (TYPE_1__ const*,int *,int *,int const*) ;
 int secp256k1_ecmult_context_is_built (int *) ;
 scalar_t__ secp256k1_pubkey_load (TYPE_1__ const*,int *,int const*) ;
 int secp256k1_scalar_is_high (int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char const*,int *) ;

int secp256k1_ecdsa_verify(const secp256k1_context* ctx, const secp256k1_ecdsa_signature *sig, const unsigned char *msg32, const secp256k1_pubkey *pubkey) {
    secp256k1_ge q;
    secp256k1_scalar r, s;
    secp256k1_scalar m;
    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(secp256k1_ecmult_context_is_built(&ctx->ecmult_ctx));
    ARG_CHECK(msg32 != ((void*)0));
    ARG_CHECK(sig != ((void*)0));
    ARG_CHECK(pubkey != ((void*)0));

    secp256k1_scalar_set_b32(&m, msg32, ((void*)0));
    secp256k1_ecdsa_signature_load(ctx, &r, &s, sig);
    return (!secp256k1_scalar_is_high(&s) &&
            secp256k1_pubkey_load(ctx, &q, pubkey) &&
            secp256k1_ecdsa_sig_verify(&ctx->ecmult_ctx, &r, &s, &q, &m));
}
