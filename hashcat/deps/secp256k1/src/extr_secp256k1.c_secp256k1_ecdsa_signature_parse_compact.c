
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_ecdsa_signature ;
typedef int secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int memset (int *,int ,int) ;
 int secp256k1_ecdsa_signature_save (int *,int *,int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char const*,int*) ;

int secp256k1_ecdsa_signature_parse_compact(const secp256k1_context* ctx, secp256k1_ecdsa_signature* sig, const unsigned char *input64) {
    secp256k1_scalar r, s;
    int ret = 1;
    int overflow = 0;

    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(sig != ((void*)0));
    ARG_CHECK(input64 != ((void*)0));

    secp256k1_scalar_set_b32(&r, &input64[0], &overflow);
    ret &= !overflow;
    secp256k1_scalar_set_b32(&s, &input64[32], &overflow);
    ret &= !overflow;
    if (ret) {
        secp256k1_ecdsa_signature_save(sig, &r, &s);
    } else {
        memset(sig, 0, sizeof(*sig));
    }
    return ret;
}
