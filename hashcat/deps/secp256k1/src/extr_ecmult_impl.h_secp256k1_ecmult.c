
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secp256k1_strauss_state {struct secp256k1_strauss_point_state* ps; int * pre_a_lam; int * pre_a; int * zr; int * prej; } ;
struct secp256k1_strauss_point_state {int dummy; } ;
typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_fe ;
typedef int secp256k1_ecmult_context ;


 int ECMULT_TABLE_SIZE (int ) ;
 int WINDOW_A ;
 int secp256k1_ecmult_strauss_wnaf (int const*,struct secp256k1_strauss_state*,int *,int,int const*,int const*,int const*) ;

__attribute__((used)) static void secp256k1_ecmult(const secp256k1_ecmult_context *ctx, secp256k1_gej *r, const secp256k1_gej *a, const secp256k1_scalar *na, const secp256k1_scalar *ng) {
    secp256k1_gej prej[ECMULT_TABLE_SIZE(WINDOW_A)];
    secp256k1_fe zr[ECMULT_TABLE_SIZE(WINDOW_A)];
    secp256k1_ge pre_a[ECMULT_TABLE_SIZE(WINDOW_A)];
    struct secp256k1_strauss_point_state ps[1];



    struct secp256k1_strauss_state state;

    state.prej = prej;
    state.zr = zr;
    state.pre_a = pre_a;



    state.ps = ps;
    secp256k1_ecmult_strauss_wnaf(ctx, &state, r, 1, a, na, ng);
}
