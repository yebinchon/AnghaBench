
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
 scalar_t__ secp256k1_ecdsa_sig_parse (int *,int *,unsigned char const*,size_t) ;
 int secp256k1_ecdsa_signature_save (int *,int *,int *) ;

int secp256k1_ecdsa_signature_parse_der(const secp256k1_context* ctx, secp256k1_ecdsa_signature* sig, const unsigned char *input, size_t inputlen) {
    secp256k1_scalar r, s;

    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(sig != ((void*)0));
    ARG_CHECK(input != ((void*)0));

    if (secp256k1_ecdsa_sig_parse(&r, &s, input, inputlen)) {
        secp256k1_ecdsa_signature_save(sig, &r, &s);
        return 1;
    } else {
        memset(sig, 0, sizeof(*sig));
        return 0;
    }
}
