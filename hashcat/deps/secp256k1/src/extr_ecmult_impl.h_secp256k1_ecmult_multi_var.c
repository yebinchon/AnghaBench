
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scratch ;
typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ecmult_multi_callback ;
typedef int secp256k1_ecmult_context ;
typedef int secp256k1_callback ;


 size_t ECMULT_PIPPENGER_THRESHOLD ;
 int secp256k1_ecmult (int const*,int *,int *,int *,int const*) ;
 int secp256k1_ecmult_multi_batch_size_helper (size_t*,size_t*,int ,size_t) ;
 int secp256k1_ecmult_multi_simple_var (int const*,int *,int const*,int ,void*,size_t) ;
 int secp256k1_ecmult_pippenger_batch (int const*,int const*,int *,int *,int const*,int ,void*,size_t,size_t) ;
 int secp256k1_ecmult_strauss_batch (int const*,int const*,int *,int *,int const*,int ,void*,size_t,size_t) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 int secp256k1_pippenger_max_points (int const*,int *) ;
 int secp256k1_scalar_set_int (int *,int ) ;
 int secp256k1_strauss_max_points (int const*,int *) ;

__attribute__((used)) static int secp256k1_ecmult_multi_var(const secp256k1_callback* error_callback, const secp256k1_ecmult_context *ctx, secp256k1_scratch *scratch, secp256k1_gej *r, const secp256k1_scalar *inp_g_sc, secp256k1_ecmult_multi_callback cb, void *cbdata, size_t n) {
    size_t i;

    int (*f)(const secp256k1_callback* error_callback, const secp256k1_ecmult_context*, secp256k1_scratch*, secp256k1_gej*, const secp256k1_scalar*, secp256k1_ecmult_multi_callback cb, void*, size_t, size_t);
    size_t n_batches;
    size_t n_batch_points;

    secp256k1_gej_set_infinity(r);
    if (inp_g_sc == ((void*)0) && n == 0) {
        return 1;
    } else if (n == 0) {
        secp256k1_scalar szero;
        secp256k1_scalar_set_int(&szero, 0);
        secp256k1_ecmult(ctx, r, r, &szero, inp_g_sc);
        return 1;
    }
    if (scratch == ((void*)0)) {
        return secp256k1_ecmult_multi_simple_var(ctx, r, inp_g_sc, cb, cbdata, n);
    }





    if (!secp256k1_ecmult_multi_batch_size_helper(&n_batches, &n_batch_points, secp256k1_pippenger_max_points(error_callback, scratch), n)) {
        return secp256k1_ecmult_multi_simple_var(ctx, r, inp_g_sc, cb, cbdata, n);
    }
    if (n_batch_points >= ECMULT_PIPPENGER_THRESHOLD) {
        f = secp256k1_ecmult_pippenger_batch;
    } else {
        if (!secp256k1_ecmult_multi_batch_size_helper(&n_batches, &n_batch_points, secp256k1_strauss_max_points(error_callback, scratch), n)) {
            return secp256k1_ecmult_multi_simple_var(ctx, r, inp_g_sc, cb, cbdata, n);
        }
        f = secp256k1_ecmult_strauss_batch;
    }
    for(i = 0; i < n_batches; i++) {
        size_t nbp = n < n_batch_points ? n : n_batch_points;
        size_t offset = n_batch_points*i;
        secp256k1_gej tmp;
        if (!f(error_callback, ctx, scratch, &tmp, i == 0 ? inp_g_sc : ((void*)0), cb, cbdata, nbp, offset)) {
            return 0;
        }
        secp256k1_gej_add_var(r, r, &tmp, ((void*)0));
        n -= nbp;
    }
    return 1;
}
