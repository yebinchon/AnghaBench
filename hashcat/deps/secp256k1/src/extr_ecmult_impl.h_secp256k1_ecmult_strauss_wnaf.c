
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


struct secp256k1_strauss_state {int * pre_a; TYPE_1__* ps; int * pre_a_lam; int zr; TYPE_13__* prej; } ;
typedef int const secp256k1_scalar ;
struct TYPE_21__ {int z; int infinity; } ;
typedef TYPE_2__ const secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_fe ;
struct TYPE_22__ {int * pre_g; int * pre_g_128; } ;
typedef TYPE_3__ secp256k1_ecmult_context ;
struct TYPE_20__ {int input_pos; int bits_na_1; int* wnaf_na_1; int bits_na_lam; int* wnaf_na_lam; int bits_na; int* wnaf_na; int const na_lam; int const na_1; } ;
struct TYPE_19__ {int z; } ;


 int ECMULT_TABLE_GET_GE (int *,int *,int,int ) ;
 int ECMULT_TABLE_GET_GE_STORAGE (int *,int ,int,int ) ;
 int ECMULT_TABLE_SIZE (int ) ;
 int VERIFY_CHECK (int) ;
 int WINDOW_A ;
 int WINDOW_G ;
 int secp256k1_ecmult_odd_multiples_table (int,TYPE_13__*,int ,TYPE_2__ const*) ;
 void* secp256k1_ecmult_wnaf (int*,int,int const*,int ) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_fe_normalize_var (int *) ;
 int secp256k1_fe_set_int (int *,int) ;
 int secp256k1_ge_globalz_set_table_gej (int,int *,int *,TYPE_13__*,int ) ;
 int secp256k1_ge_mul_lambda (int *,int *) ;
 int secp256k1_gej_add_ge_var (TYPE_2__ const*,TYPE_2__ const*,int *,int *) ;
 int secp256k1_gej_add_zinv_var (TYPE_2__ const*,TYPE_2__ const*,int *,int *) ;
 int secp256k1_gej_double_var (TYPE_2__ const*,TYPE_2__ const*,int *) ;
 scalar_t__ secp256k1_gej_is_infinity (TYPE_2__ const*) ;
 int secp256k1_gej_rescale (TYPE_2__ const*,int *) ;
 int secp256k1_gej_set_infinity (TYPE_2__ const*) ;
 scalar_t__ secp256k1_scalar_is_zero (int const*) ;
 int secp256k1_scalar_split_128 (int const*,int const*,int const*) ;
 int secp256k1_scalar_split_lambda (int const*,int const*,int const*) ;

__attribute__((used)) static void secp256k1_ecmult_strauss_wnaf(const secp256k1_ecmult_context *ctx, const struct secp256k1_strauss_state *state, secp256k1_gej *r, int num, const secp256k1_gej *a, const secp256k1_scalar *na, const secp256k1_scalar *ng) {
    secp256k1_ge tmpa;
    secp256k1_fe Z;
    int wnaf_ng[256];
    int bits_ng = 0;

    int i;
    int bits = 0;
    int np;
    int no = 0;

    for (np = 0; np < num; ++np) {
        if (secp256k1_scalar_is_zero(&na[np]) || secp256k1_gej_is_infinity(&a[np])) {
            continue;
        }
        state->ps[no].input_pos = np;
        state->ps[no].bits_na = secp256k1_ecmult_wnaf(state->ps[no].wnaf_na, 256, &na[np], WINDOW_A);
        if (state->ps[no].bits_na > bits) {
            bits = state->ps[no].bits_na;
        }

        ++no;
    }
    if (no > 0) {

        secp256k1_ecmult_odd_multiples_table(ECMULT_TABLE_SIZE(WINDOW_A), state->prej, state->zr, &a[state->ps[0].input_pos]);
        for (np = 1; np < no; ++np) {
            secp256k1_gej tmp = a[state->ps[np].input_pos];



            secp256k1_gej_rescale(&tmp, &(state->prej[(np - 1) * ECMULT_TABLE_SIZE(WINDOW_A) + ECMULT_TABLE_SIZE(WINDOW_A) - 1].z));
            secp256k1_ecmult_odd_multiples_table(ECMULT_TABLE_SIZE(WINDOW_A), state->prej + np * ECMULT_TABLE_SIZE(WINDOW_A), state->zr + np * ECMULT_TABLE_SIZE(WINDOW_A), &tmp);
            secp256k1_fe_mul(state->zr + np * ECMULT_TABLE_SIZE(WINDOW_A), state->zr + np * ECMULT_TABLE_SIZE(WINDOW_A), &(a[state->ps[np].input_pos].z));
        }

        secp256k1_ge_globalz_set_table_gej(ECMULT_TABLE_SIZE(WINDOW_A) * no, state->pre_a, &Z, state->prej, state->zr);
    } else {
        secp256k1_fe_set_int(&Z, 1);
    }
    if (ng) {
        bits_ng = secp256k1_ecmult_wnaf(wnaf_ng, 256, ng, WINDOW_G);
        if (bits_ng > bits) {
            bits = bits_ng;
        }
    }


    secp256k1_gej_set_infinity(r);

    for (i = bits - 1; i >= 0; i--) {
        int n;
        secp256k1_gej_double_var(r, r, ((void*)0));
        for (np = 0; np < no; ++np) {
            if (i < state->ps[np].bits_na && (n = state->ps[np].wnaf_na[i])) {
                ECMULT_TABLE_GET_GE(&tmpa, state->pre_a + np * ECMULT_TABLE_SIZE(WINDOW_A), n, WINDOW_A);
                secp256k1_gej_add_ge_var(r, r, &tmpa, ((void*)0));
            }
        }
        if (i < bits_ng && (n = wnaf_ng[i])) {
            ECMULT_TABLE_GET_GE_STORAGE(&tmpa, *ctx->pre_g, n, WINDOW_G);
            secp256k1_gej_add_zinv_var(r, r, &tmpa, &Z);
        }

    }

    if (!r->infinity) {
        secp256k1_fe_mul(&r->z, &r->z, &Z);
    }
}
