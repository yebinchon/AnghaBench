
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
struct TYPE_5__ {int x; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;
typedef int secp256k1_ecmult_context ;


 int secp256k1_ecdsa_const_order_as_fe ;
 int secp256k1_ecdsa_const_p_minus_order ;
 int secp256k1_ecmult (int const*,int *,int *,int *,int *) ;
 int secp256k1_fe_add (int *,int *) ;
 scalar_t__ secp256k1_fe_cmp_var (int *,int *) ;
 int secp256k1_fe_get_b32 (unsigned char*,int *) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_fe_set_b32 (int *,unsigned char*) ;
 int secp256k1_ge_set_gej (TYPE_1__*,int *) ;
 scalar_t__ secp256k1_gej_eq_x_var (int *,int *) ;
 scalar_t__ secp256k1_gej_is_infinity (int *) ;
 int secp256k1_gej_set_ge (int *,TYPE_1__ const*) ;
 int secp256k1_scalar_eq (int const*,int *) ;
 int secp256k1_scalar_get_b32 (unsigned char*,int const*) ;
 int secp256k1_scalar_inverse_var (int *,int const*) ;
 scalar_t__ secp256k1_scalar_is_zero (int const*) ;
 int secp256k1_scalar_mul (int *,int *,int const*) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int *) ;

__attribute__((used)) static int secp256k1_ecdsa_sig_verify(const secp256k1_ecmult_context *ctx, const secp256k1_scalar *sigr, const secp256k1_scalar *sigs, const secp256k1_ge *pubkey, const secp256k1_scalar *message) {
    unsigned char c[32];
    secp256k1_scalar sn, u1, u2;

    secp256k1_fe xr;

    secp256k1_gej pubkeyj;
    secp256k1_gej pr;

    if (secp256k1_scalar_is_zero(sigr) || secp256k1_scalar_is_zero(sigs)) {
        return 0;
    }

    secp256k1_scalar_inverse_var(&sn, sigs);
    secp256k1_scalar_mul(&u1, &sn, message);
    secp256k1_scalar_mul(&u2, &sn, sigr);
    secp256k1_gej_set_ge(&pubkeyj, pubkey);
    secp256k1_ecmult(ctx, &pr, &pubkeyj, &u2, &u1);
    if (secp256k1_gej_is_infinity(&pr)) {
        return 0;
    }
    secp256k1_scalar_get_b32(c, sigr);
    secp256k1_fe_set_b32(&xr, c);
    if (secp256k1_gej_eq_x_var(&xr, &pr)) {

        return 1;
    }
    if (secp256k1_fe_cmp_var(&xr, &secp256k1_ecdsa_const_p_minus_order) >= 0) {

        return 0;
    }
    secp256k1_fe_add(&xr, &secp256k1_ecdsa_const_order_as_fe);
    if (secp256k1_gej_eq_x_var(&xr, &pr)) {

        return 1;
    }
    return 0;

}
