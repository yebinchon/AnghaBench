
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_ecmult_context ;


 int secp256k1_ecmult (int const*,int *,int *,int *,int const*) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 scalar_t__ secp256k1_gej_is_infinity (int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

__attribute__((used)) static int secp256k1_eckey_pubkey_tweak_add(const secp256k1_ecmult_context *ctx, secp256k1_ge *key, const secp256k1_scalar *tweak) {
    secp256k1_gej pt;
    secp256k1_scalar one;
    secp256k1_gej_set_ge(&pt, key);
    secp256k1_scalar_set_int(&one, 1);
    secp256k1_ecmult(ctx, &pt, &pt, &one, tweak);

    if (secp256k1_gej_is_infinity(&pt)) {
        return 0;
    }
    secp256k1_ge_set_gej(key, &pt);
    return 1;
}
