
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_pubkey ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_context ;


 int ARG_CHECK (int) ;
 int memset (int *,int ,int) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_gej_add_ge (int *,int *,int *) ;
 scalar_t__ secp256k1_gej_is_infinity (int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 int secp256k1_pubkey_load (int const*,int *,int const* const) ;
 int secp256k1_pubkey_save (int *,int *) ;

int secp256k1_ec_pubkey_combine(const secp256k1_context* ctx, secp256k1_pubkey *pubnonce, const secp256k1_pubkey * const *pubnonces, size_t n) {
    size_t i;
    secp256k1_gej Qj;
    secp256k1_ge Q;

    ARG_CHECK(pubnonce != ((void*)0));
    memset(pubnonce, 0, sizeof(*pubnonce));
    ARG_CHECK(n >= 1);
    ARG_CHECK(pubnonces != ((void*)0));

    secp256k1_gej_set_infinity(&Qj);

    for (i = 0; i < n; i++) {
        secp256k1_pubkey_load(ctx, &Q, pubnonces[i]);
        secp256k1_gej_add_ge(&Qj, &Qj, &Q);
    }
    if (secp256k1_gej_is_infinity(&Qj)) {
        return 0;
    }
    secp256k1_ge_set_gej(&Q, &Qj);
    secp256k1_pubkey_save(pubnonce, &Q);
    return 1;
}
