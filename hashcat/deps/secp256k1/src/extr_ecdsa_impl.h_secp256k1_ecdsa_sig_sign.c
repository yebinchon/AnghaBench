
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const secp256k1_scalar ;
typedef int secp256k1_gej ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_ecmult_gen_context ;


 int VERIFY_CHECK (int) ;
 int secp256k1_ecmult_gen (int const*,int *,int const*) ;
 int secp256k1_fe_get_b32 (unsigned char*,int *) ;
 scalar_t__ secp256k1_fe_is_odd (int *) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_ge_clear (TYPE_1__*) ;
 int secp256k1_ge_set_gej (TYPE_1__*,int *) ;
 int secp256k1_gej_clear (int *) ;
 int secp256k1_scalar_add (int const*,int const*,int const*) ;
 int secp256k1_scalar_clear (int const*) ;
 int secp256k1_scalar_inverse (int const*,int const*) ;
 scalar_t__ secp256k1_scalar_is_high (int const*) ;
 scalar_t__ secp256k1_scalar_is_zero (int const*) ;
 int secp256k1_scalar_mul (int const*,int const*,int const*) ;
 int secp256k1_scalar_negate (int const*,int const*) ;
 int secp256k1_scalar_set_b32 (int const*,unsigned char*,int*) ;

__attribute__((used)) static int secp256k1_ecdsa_sig_sign(const secp256k1_ecmult_gen_context *ctx, secp256k1_scalar *sigr, secp256k1_scalar *sigs, const secp256k1_scalar *seckey, const secp256k1_scalar *message, const secp256k1_scalar *nonce, int *recid) {
    unsigned char b[32];
    secp256k1_gej rp;
    secp256k1_ge r;
    secp256k1_scalar n;
    int overflow = 0;

    secp256k1_ecmult_gen(ctx, &rp, nonce);
    secp256k1_ge_set_gej(&r, &rp);
    secp256k1_fe_normalize(&r.x);
    secp256k1_fe_normalize(&r.y);
    secp256k1_fe_get_b32(b, &r.x);
    secp256k1_scalar_set_b32(sigr, b, &overflow);

    VERIFY_CHECK(!secp256k1_scalar_is_zero(sigr));
    VERIFY_CHECK(overflow == 0);

    if (recid) {



        *recid = (overflow ? 2 : 0) | (secp256k1_fe_is_odd(&r.y) ? 1 : 0);
    }
    secp256k1_scalar_mul(&n, sigr, seckey);
    secp256k1_scalar_add(&n, &n, message);
    secp256k1_scalar_inverse(sigs, nonce);
    secp256k1_scalar_mul(sigs, sigs, &n);
    secp256k1_scalar_clear(&n);
    secp256k1_gej_clear(&rp);
    secp256k1_ge_clear(&r);
    if (secp256k1_scalar_is_zero(sigs)) {
        return 0;
    }
    if (secp256k1_scalar_is_high(sigs)) {
        secp256k1_scalar_negate(sigs, sigs);
        if (recid) {
            *recid ^= 1;
        }
    }
    return 1;
}
