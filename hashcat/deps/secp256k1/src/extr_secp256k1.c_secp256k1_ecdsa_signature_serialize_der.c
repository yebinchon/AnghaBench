
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_ecdsa_signature ;
typedef int secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int secp256k1_ecdsa_sig_serialize (unsigned char*,size_t*,int *,int *) ;
 int secp256k1_ecdsa_signature_load (int const*,int *,int *,int const*) ;

int secp256k1_ecdsa_signature_serialize_der(const secp256k1_context* ctx, unsigned char *output, size_t *outputlen, const secp256k1_ecdsa_signature* sig) {
    secp256k1_scalar r, s;

    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(output != ((void*)0));
    ARG_CHECK(outputlen != ((void*)0));
    ARG_CHECK(sig != ((void*)0));

    secp256k1_ecdsa_signature_load(ctx, &r, &s, sig);
    return secp256k1_ecdsa_sig_serialize(output, outputlen, &r, &s);
}
