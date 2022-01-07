
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_ge ;



__attribute__((used)) static int ecmult_multi_false_callback(secp256k1_scalar *sc, secp256k1_ge *pt, size_t idx, void *cbdata) {
    (void)sc;
    (void)pt;
    (void)idx;
    (void)cbdata;
    return 0;
}
