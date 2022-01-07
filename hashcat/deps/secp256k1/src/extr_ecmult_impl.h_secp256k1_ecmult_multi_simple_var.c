
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int (* secp256k1_ecmult_multi_callback ) (int *,int *,size_t,void*) ;
typedef int secp256k1_ecmult_context ;


 int secp256k1_ecmult (int const*,int *,int *,int *,int const*) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 int secp256k1_scalar_set_int (int *,int ) ;

__attribute__((used)) static int secp256k1_ecmult_multi_simple_var(const secp256k1_ecmult_context *ctx, secp256k1_gej *r, const secp256k1_scalar *inp_g_sc, secp256k1_ecmult_multi_callback cb, void *cbdata, size_t n_points) {
    size_t point_idx;
    secp256k1_scalar szero;
    secp256k1_gej tmpj;

    secp256k1_scalar_set_int(&szero, 0);
    secp256k1_gej_set_infinity(r);
    secp256k1_gej_set_infinity(&tmpj);

    secp256k1_ecmult(ctx, r, &tmpj, &szero, inp_g_sc);
    for (point_idx = 0; point_idx < n_points; point_idx++) {
        secp256k1_ge point;
        secp256k1_gej pointj;
        secp256k1_scalar scalar;
        if (!cb(&scalar, &point, point_idx, cbdata)) {
            return 0;
        }

        secp256k1_gej_set_ge(&pointj, &point);
        secp256k1_ecmult(ctx, &tmpj, &pointj, &scalar, ((void*)0));
        secp256k1_gej_add_var(r, r, &tmpj, ((void*)0));
    }
    return 1;
}
