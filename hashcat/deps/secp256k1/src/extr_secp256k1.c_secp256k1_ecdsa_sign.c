
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int (* secp256k1_nonce_function ) (unsigned char*,unsigned char const*,unsigned char const*,int *,void*,unsigned int) ;
typedef unsigned char secp256k1_ecdsa_signature ;
struct TYPE_3__ {int ecmult_gen_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ secp256k1_ecdsa_sig_sign (int *,int *,int *,int *,int *,int *,int *) ;
 int secp256k1_ecdsa_signature_save (unsigned char*,int *,int *) ;
 int secp256k1_ecmult_gen_context_is_built (int *) ;
 int secp256k1_nonce_function_default (unsigned char*,unsigned char const*,unsigned char const*,int *,void*,unsigned int) ;
 int secp256k1_scalar_clear (int *) ;
 int secp256k1_scalar_is_zero (int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char const*,int*) ;

int secp256k1_ecdsa_sign(const secp256k1_context* ctx, secp256k1_ecdsa_signature *signature, const unsigned char *msg32, const unsigned char *seckey, secp256k1_nonce_function noncefp, const void* noncedata) {
    secp256k1_scalar r, s;
    secp256k1_scalar sec, non, msg;
    int ret = 0;
    int overflow = 0;
    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(secp256k1_ecmult_gen_context_is_built(&ctx->ecmult_gen_ctx));
    ARG_CHECK(msg32 != ((void*)0));
    ARG_CHECK(signature != ((void*)0));
    ARG_CHECK(seckey != ((void*)0));
    if (noncefp == ((void*)0)) {
        noncefp = secp256k1_nonce_function_default;
    }

    secp256k1_scalar_set_b32(&sec, seckey, &overflow);

    if (!overflow && !secp256k1_scalar_is_zero(&sec)) {
        unsigned char nonce32[32];
        unsigned int count = 0;
        secp256k1_scalar_set_b32(&msg, msg32, ((void*)0));
        while (1) {
            ret = noncefp(nonce32, msg32, seckey, ((void*)0), (void*)noncedata, count);
            if (!ret) {
                break;
            }
            secp256k1_scalar_set_b32(&non, nonce32, &overflow);
            if (!overflow && !secp256k1_scalar_is_zero(&non)) {
                if (secp256k1_ecdsa_sig_sign(&ctx->ecmult_gen_ctx, &r, &s, &sec, &msg, &non, ((void*)0))) {
                    break;
                }
            }
            count++;
        }
        memset(nonce32, 0, 32);
        secp256k1_scalar_clear(&msg);
        secp256k1_scalar_clear(&non);
        secp256k1_scalar_clear(&sec);
    }
    if (ret) {
        secp256k1_ecdsa_signature_save(signature, &r, &s);
    } else {
        memset(signature, 0, sizeof(*signature));
    }
    return ret;
}
