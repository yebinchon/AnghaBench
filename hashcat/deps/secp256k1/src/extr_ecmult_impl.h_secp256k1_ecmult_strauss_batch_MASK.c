#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct secp256k1_strauss_state {int /*<<< orphan*/ * pre_a; int /*<<< orphan*/ * zr; int /*<<< orphan*/ * prej; struct secp256k1_strauss_point_state* ps; int /*<<< orphan*/ * pre_a_lam; } ;
struct secp256k1_strauss_point_state {int dummy; } ;
typedef  int /*<<< orphan*/  secp256k1_scratch ;
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
typedef  int /*<<< orphan*/  (* secp256k1_ecmult_multi_callback ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,void*) ;
typedef  int /*<<< orphan*/  secp256k1_ecmult_context ;
typedef  int /*<<< orphan*/  secp256k1_callback ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINDOW_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,struct secp256k1_strauss_state*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t const) ; 
 size_t FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const secp256k1_callback* error_callback, const secp256k1_ecmult_context *ctx, secp256k1_scratch *scratch, secp256k1_gej *r, const secp256k1_scalar *inp_g_sc, secp256k1_ecmult_multi_callback cb, void *cbdata, size_t n_points, size_t cb_offset) {
    secp256k1_gej* points;
    secp256k1_scalar* scalars;
    struct secp256k1_strauss_state state;
    size_t i;
    const size_t scratch_checkpoint = FUNC6(error_callback, scratch);

    FUNC3(r);
    if (inp_g_sc == NULL && n_points == 0) {
        return 1;
    }

    points = (secp256k1_gej*)FUNC4(error_callback, scratch, n_points * sizeof(secp256k1_gej));
    scalars = (secp256k1_scalar*)FUNC4(error_callback, scratch, n_points * sizeof(secp256k1_scalar));
    state.prej = (secp256k1_gej*)FUNC4(error_callback, scratch, n_points * FUNC0(WINDOW_A) * sizeof(secp256k1_gej));
    state.zr = (secp256k1_fe*)FUNC4(error_callback, scratch, n_points * FUNC0(WINDOW_A) * sizeof(secp256k1_fe));
#ifdef USE_ENDOMORPHISM
    state.pre_a = (secp256k1_ge*)secp256k1_scratch_alloc(error_callback, scratch, n_points * 2 * ECMULT_TABLE_SIZE(WINDOW_A) * sizeof(secp256k1_ge));
    state.pre_a_lam = state.pre_a + n_points * ECMULT_TABLE_SIZE(WINDOW_A);
#else
    state.pre_a = (secp256k1_ge*)FUNC4(error_callback, scratch, n_points * FUNC0(WINDOW_A) * sizeof(secp256k1_ge));
#endif
    state.ps = (struct secp256k1_strauss_point_state*)FUNC4(error_callback, scratch, n_points * sizeof(struct secp256k1_strauss_point_state));

    if (points == NULL || scalars == NULL || state.prej == NULL || state.zr == NULL || state.pre_a == NULL) {
        FUNC5(error_callback, scratch, scratch_checkpoint);
        return 0;
    }

    for (i = 0; i < n_points; i++) {
        secp256k1_ge point;
        if (!cb(&scalars[i], &point, i+cb_offset, cbdata)) {
            FUNC5(error_callback, scratch, scratch_checkpoint);
            return 0;
        }
        FUNC2(&points[i], &point);
    }
    FUNC1(ctx, &state, r, n_points, points, scalars, inp_g_sc);
    FUNC5(error_callback, scratch, scratch_checkpoint);
    return 1;
}