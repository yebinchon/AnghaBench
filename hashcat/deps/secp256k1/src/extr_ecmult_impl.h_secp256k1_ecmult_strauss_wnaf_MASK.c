#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
struct secp256k1_strauss_state {int /*<<< orphan*/ * pre_a; TYPE_1__* ps; int /*<<< orphan*/ * pre_a_lam; int /*<<< orphan*/  zr; TYPE_13__* prej; } ;
typedef  int /*<<< orphan*/  const secp256k1_scalar ;
struct TYPE_21__ {int /*<<< orphan*/  z; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_2__ const secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
struct TYPE_22__ {int /*<<< orphan*/ * pre_g; int /*<<< orphan*/ * pre_g_128; } ;
typedef  TYPE_3__ secp256k1_ecmult_context ;
struct TYPE_20__ {int input_pos; int bits_na_1; int* wnaf_na_1; int bits_na_lam; int* wnaf_na_lam; int bits_na; int* wnaf_na; int /*<<< orphan*/  const na_lam; int /*<<< orphan*/  const na_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  z; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WINDOW_A ; 
 int /*<<< orphan*/  WINDOW_G ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_13__*,int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 void* FUNC5 (int*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__ const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC20(const secp256k1_ecmult_context *ctx, const struct secp256k1_strauss_state *state, secp256k1_gej *r, int num, const secp256k1_gej *a, const secp256k1_scalar *na, const secp256k1_scalar *ng) {
    secp256k1_ge tmpa;
    secp256k1_fe Z;
#ifdef USE_ENDOMORPHISM
    /* Splitted G factors. */
    secp256k1_scalar ng_1, ng_128;
    int wnaf_ng_1[129];
    int bits_ng_1 = 0;
    int wnaf_ng_128[129];
    int bits_ng_128 = 0;
#else
    int wnaf_ng[256];
    int bits_ng = 0;
#endif
    int i;
    int bits = 0;
    int np;
    int no = 0;

    for (np = 0; np < num; ++np) {
        if (FUNC17(&na[np]) || FUNC14(&a[np])) {
            continue;
        }
        state->ps[no].input_pos = np;
#ifdef USE_ENDOMORPHISM
        /* split na into na_1 and na_lam (where na = na_1 + na_lam*lambda, and na_1 and na_lam are ~128 bit) */
        secp256k1_scalar_split_lambda(&state->ps[no].na_1, &state->ps[no].na_lam, &na[np]);

        /* build wnaf representation for na_1 and na_lam. */
        state->ps[no].bits_na_1   = secp256k1_ecmult_wnaf(state->ps[no].wnaf_na_1,   130, &state->ps[no].na_1,   WINDOW_A);
        state->ps[no].bits_na_lam = secp256k1_ecmult_wnaf(state->ps[no].wnaf_na_lam, 130, &state->ps[no].na_lam, WINDOW_A);
        VERIFY_CHECK(state->ps[no].bits_na_1 <= 130);
        VERIFY_CHECK(state->ps[no].bits_na_lam <= 130);
        if (state->ps[no].bits_na_1 > bits) {
            bits = state->ps[no].bits_na_1;
        }
        if (state->ps[no].bits_na_lam > bits) {
            bits = state->ps[no].bits_na_lam;
        }
#else
        /* build wnaf representation for na. */
        state->ps[no].bits_na     = FUNC5(state->ps[no].wnaf_na,     256, &na[np],      WINDOW_A);
        if (state->ps[no].bits_na > bits) {
            bits = state->ps[no].bits_na;
        }
#endif
        ++no;
    }

    /* Calculate odd multiples of a.
     * All multiples are brought to the same Z 'denominator', which is stored
     * in Z. Due to secp256k1' isomorphism we can do all operations pretending
     * that the Z coordinate was 1, use affine addition formulae, and correct
     * the Z coordinate of the result once at the end.
     * The exception is the precomputed G table points, which are actually
     * affine. Compared to the base used for other points, they have a Z ratio
     * of 1/Z, so we can use secp256k1_gej_add_zinv_var, which uses the same
     * isomorphism to efficiently add with a known Z inverse.
     */
    if (no > 0) {
        /* Compute the odd multiples in Jacobian form. */
        FUNC4(FUNC2(WINDOW_A), state->prej, state->zr, &a[state->ps[0].input_pos]);
        for (np = 1; np < no; ++np) {
            secp256k1_gej tmp = a[state->ps[np].input_pos];
#ifdef VERIFY
            secp256k1_fe_normalize_var(&(state->prej[(np - 1) * ECMULT_TABLE_SIZE(WINDOW_A) + ECMULT_TABLE_SIZE(WINDOW_A) - 1].z));
#endif
            FUNC15(&tmp, &(state->prej[(np - 1) * FUNC2(WINDOW_A) + FUNC2(WINDOW_A) - 1].z));
            FUNC4(FUNC2(WINDOW_A), state->prej + np * FUNC2(WINDOW_A), state->zr + np * FUNC2(WINDOW_A), &tmp);
            FUNC6(state->zr + np * FUNC2(WINDOW_A), state->zr + np * FUNC2(WINDOW_A), &(a[state->ps[np].input_pos].z));
        }
        /* Bring them to the same Z denominator. */
        FUNC9(FUNC2(WINDOW_A) * no, state->pre_a, &Z, state->prej, state->zr);
    } else {
        FUNC8(&Z, 1);
    }

#ifdef USE_ENDOMORPHISM
    for (np = 0; np < no; ++np) {
        for (i = 0; i < ECMULT_TABLE_SIZE(WINDOW_A); i++) {
            secp256k1_ge_mul_lambda(&state->pre_a_lam[np * ECMULT_TABLE_SIZE(WINDOW_A) + i], &state->pre_a[np * ECMULT_TABLE_SIZE(WINDOW_A) + i]);
        }
    }

    if (ng) {
        /* split ng into ng_1 and ng_128 (where gn = gn_1 + gn_128*2^128, and gn_1 and gn_128 are ~128 bit) */
        secp256k1_scalar_split_128(&ng_1, &ng_128, ng);

        /* Build wnaf representation for ng_1 and ng_128 */
        bits_ng_1   = secp256k1_ecmult_wnaf(wnaf_ng_1,   129, &ng_1,   WINDOW_G);
        bits_ng_128 = secp256k1_ecmult_wnaf(wnaf_ng_128, 129, &ng_128, WINDOW_G);
        if (bits_ng_1 > bits) {
            bits = bits_ng_1;
        }
        if (bits_ng_128 > bits) {
            bits = bits_ng_128;
        }
    }
#else
    if (ng) {
        bits_ng     = FUNC5(wnaf_ng,     256, ng,      WINDOW_G);
        if (bits_ng > bits) {
            bits = bits_ng;
        }
    }
#endif

    FUNC16(r);

    for (i = bits - 1; i >= 0; i--) {
        int n;
        FUNC13(r, r, NULL);
#ifdef USE_ENDOMORPHISM
        for (np = 0; np < no; ++np) {
            if (i < state->ps[np].bits_na_1 && (n = state->ps[np].wnaf_na_1[i])) {
                ECMULT_TABLE_GET_GE(&tmpa, state->pre_a + np * ECMULT_TABLE_SIZE(WINDOW_A), n, WINDOW_A);
                secp256k1_gej_add_ge_var(r, r, &tmpa, NULL);
            }
            if (i < state->ps[np].bits_na_lam && (n = state->ps[np].wnaf_na_lam[i])) {
                ECMULT_TABLE_GET_GE(&tmpa, state->pre_a_lam + np * ECMULT_TABLE_SIZE(WINDOW_A), n, WINDOW_A);
                secp256k1_gej_add_ge_var(r, r, &tmpa, NULL);
            }
        }
        if (i < bits_ng_1 && (n = wnaf_ng_1[i])) {
            ECMULT_TABLE_GET_GE_STORAGE(&tmpa, *ctx->pre_g, n, WINDOW_G);
            secp256k1_gej_add_zinv_var(r, r, &tmpa, &Z);
        }
        if (i < bits_ng_128 && (n = wnaf_ng_128[i])) {
            ECMULT_TABLE_GET_GE_STORAGE(&tmpa, *ctx->pre_g_128, n, WINDOW_G);
            secp256k1_gej_add_zinv_var(r, r, &tmpa, &Z);
        }
#else
        for (np = 0; np < no; ++np) {
            if (i < state->ps[np].bits_na && (n = state->ps[np].wnaf_na[i])) {
                FUNC0(&tmpa, state->pre_a + np * FUNC2(WINDOW_A), n, WINDOW_A);
                FUNC11(r, r, &tmpa, NULL);
            }
        }
        if (i < bits_ng && (n = wnaf_ng[i])) {
            FUNC1(&tmpa, *ctx->pre_g, n, WINDOW_G);
            FUNC12(r, r, &tmpa, &Z);
        }
#endif
    }

    if (!r->infinity) {
        FUNC6(&r->z, &r->z, &Z);
    }
}