
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_pubkey ;
typedef int secp256k1_ge ;
typedef int secp256k1_context ;


 int ARG_CHECK (int) ;
 unsigned int SECP256K1_FLAGS_BIT_COMPRESSION ;
 unsigned int SECP256K1_FLAGS_TYPE_COMPRESSION ;
 unsigned int SECP256K1_FLAGS_TYPE_MASK ;
 int VERIFY_CHECK (int ) ;
 int memset (unsigned char*,int ,size_t) ;
 int secp256k1_eckey_pubkey_serialize (int *,unsigned char*,size_t*,unsigned int) ;
 scalar_t__ secp256k1_pubkey_load (int const*,int *,int const*) ;

int secp256k1_ec_pubkey_serialize(const secp256k1_context* ctx, unsigned char *output, size_t *outputlen, const secp256k1_pubkey* pubkey, unsigned int flags) {
    secp256k1_ge Q;
    size_t len;
    int ret = 0;

    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(outputlen != ((void*)0));
    ARG_CHECK(*outputlen >= ((flags & SECP256K1_FLAGS_BIT_COMPRESSION) ? 33 : 65));
    len = *outputlen;
    *outputlen = 0;
    ARG_CHECK(output != ((void*)0));
    memset(output, 0, len);
    ARG_CHECK(pubkey != ((void*)0));
    ARG_CHECK((flags & SECP256K1_FLAGS_TYPE_MASK) == SECP256K1_FLAGS_TYPE_COMPRESSION);
    if (secp256k1_pubkey_load(ctx, &Q, pubkey)) {
        ret = secp256k1_eckey_pubkey_serialize(&Q, output, &len, flags & SECP256K1_FLAGS_BIT_COMPRESSION);
        if (ret) {
            *outputlen = len;
        }
    }
    return ret;
}
