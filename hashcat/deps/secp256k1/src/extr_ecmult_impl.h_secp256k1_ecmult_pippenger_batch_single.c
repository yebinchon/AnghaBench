
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


 int secp256k1_ecmult_pippenger_batch (int const*,int const*,int *,int *,int const*,int ,void*,size_t,int ) ;

__attribute__((used)) static int secp256k1_ecmult_pippenger_batch_single(const secp256k1_callback* error_callback, const secp256k1_ecmult_context *actx, secp256k1_scratch *scratch, secp256k1_gej *r, const secp256k1_scalar *inp_g_sc, secp256k1_ecmult_multi_callback cb, void *cbdata, size_t n) {
    return secp256k1_ecmult_pippenger_batch(error_callback, actx, scratch, r, inp_g_sc, cb, cbdata, n, 0);
}
