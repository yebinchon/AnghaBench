
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int secp256k1_scalar ;


 int secp256k1_scalar_reduce_512 (int *,int *) ;
 int secp256k1_scalar_sqr_512 (int *,int const*) ;

__attribute__((used)) static void secp256k1_scalar_sqr(secp256k1_scalar *r, const secp256k1_scalar *a) {
    uint32_t l[16];
    secp256k1_scalar_sqr_512(l, a);
    secp256k1_scalar_reduce_512(r, l);
}
