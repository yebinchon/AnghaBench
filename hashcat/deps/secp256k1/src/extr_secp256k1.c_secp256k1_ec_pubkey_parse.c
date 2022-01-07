
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_pubkey ;
typedef int secp256k1_ge ;
typedef int secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int memset (int *,int ,int) ;
 int secp256k1_eckey_pubkey_parse (int *,unsigned char const*,size_t) ;
 int secp256k1_ge_clear (int *) ;
 int secp256k1_pubkey_save (int *,int *) ;

int secp256k1_ec_pubkey_parse(const secp256k1_context* ctx, secp256k1_pubkey* pubkey, const unsigned char *input, size_t inputlen) {
    secp256k1_ge Q;

    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(pubkey != ((void*)0));
    memset(pubkey, 0, sizeof(*pubkey));
    ARG_CHECK(input != ((void*)0));
    if (!secp256k1_eckey_pubkey_parse(&Q, input, inputlen)) {
        return 0;
    }
    secp256k1_pubkey_save(pubkey, &Q);
    secp256k1_ge_clear(&Q);
    return 1;
}
