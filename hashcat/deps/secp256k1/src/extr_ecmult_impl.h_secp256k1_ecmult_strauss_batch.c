
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secp256k1_strauss_state {int * pre_a; int * zr; int * prej; struct secp256k1_strauss_point_state* ps; int * pre_a_lam; } ;
struct secp256k1_strauss_point_state {int dummy; } ;
typedef int secp256k1_scratch ;
typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_fe ;
typedef int (* secp256k1_ecmult_multi_callback ) (int *,int *,size_t,void*) ;
typedef int secp256k1_ecmult_context ;
typedef int secp256k1_callback ;


 size_t ECMULT_TABLE_SIZE (int ) ;
 int WINDOW_A ;
 int secp256k1_ecmult_strauss_wnaf (int const*,struct secp256k1_strauss_state*,int *,size_t,int *,int *,int const*) ;
 int secp256k1_gej_set_ge (int *,int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 scalar_t__ secp256k1_scratch_alloc (int const*,int *,size_t) ;
 int secp256k1_scratch_apply_checkpoint (int const*,int *,size_t const) ;
 size_t secp256k1_scratch_checkpoint (int const*,int *) ;

__attribute__((used)) static int secp256k1_ecmult_strauss_batch(const secp256k1_callback* error_callback, const secp256k1_ecmult_context *ctx, secp256k1_scratch *scratch, secp256k1_gej *r, const secp256k1_scalar *inp_g_sc, secp256k1_ecmult_multi_callback cb, void *cbdata, size_t n_points, size_t cb_offset) {
    secp256k1_gej* points;
    secp256k1_scalar* scalars;
    struct secp256k1_strauss_state state;
    size_t i;
    const size_t scratch_checkpoint = secp256k1_scratch_checkpoint(error_callback, scratch);

    secp256k1_gej_set_infinity(r);
    if (inp_g_sc == ((void*)0) && n_points == 0) {
        return 1;
    }

    points = (secp256k1_gej*)secp256k1_scratch_alloc(error_callback, scratch, n_points * sizeof(secp256k1_gej));
    scalars = (secp256k1_scalar*)secp256k1_scratch_alloc(error_callback, scratch, n_points * sizeof(secp256k1_scalar));
    state.prej = (secp256k1_gej*)secp256k1_scratch_alloc(error_callback, scratch, n_points * ECMULT_TABLE_SIZE(WINDOW_A) * sizeof(secp256k1_gej));
    state.zr = (secp256k1_fe*)secp256k1_scratch_alloc(error_callback, scratch, n_points * ECMULT_TABLE_SIZE(WINDOW_A) * sizeof(secp256k1_fe));




    state.pre_a = (secp256k1_ge*)secp256k1_scratch_alloc(error_callback, scratch, n_points * ECMULT_TABLE_SIZE(WINDOW_A) * sizeof(secp256k1_ge));

    state.ps = (struct secp256k1_strauss_point_state*)secp256k1_scratch_alloc(error_callback, scratch, n_points * sizeof(struct secp256k1_strauss_point_state));

    if (points == ((void*)0) || scalars == ((void*)0) || state.prej == ((void*)0) || state.zr == ((void*)0) || state.pre_a == ((void*)0)) {
        secp256k1_scratch_apply_checkpoint(error_callback, scratch, scratch_checkpoint);
        return 0;
    }

    for (i = 0; i < n_points; i++) {
        secp256k1_ge point;
        if (!cb(&scalars[i], &point, i+cb_offset, cbdata)) {
            secp256k1_scratch_apply_checkpoint(error_callback, scratch, scratch_checkpoint);
            return 0;
        }
        secp256k1_gej_set_ge(&points[i], &point);
    }
    secp256k1_ecmult_strauss_wnaf(ctx, &state, r, n_points, points, scalars, inp_g_sc);
    secp256k1_scratch_apply_checkpoint(error_callback, scratch, scratch_checkpoint);
    return 1;
}
