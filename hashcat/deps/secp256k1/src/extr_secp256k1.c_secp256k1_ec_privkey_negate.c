
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int secp256k1_scalar_clear (int *) ;
 int secp256k1_scalar_get_b32 (unsigned char*,int *) ;
 int secp256k1_scalar_negate (int *,int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int *) ;

int secp256k1_ec_privkey_negate(const secp256k1_context* ctx, unsigned char *seckey) {
    secp256k1_scalar sec;
    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(seckey != ((void*)0));

    secp256k1_scalar_set_b32(&sec, seckey, ((void*)0));
    secp256k1_scalar_negate(&sec, &sec);
    secp256k1_scalar_get_b32(seckey, &sec);

    secp256k1_scalar_clear(&sec);
    return 1;
}
