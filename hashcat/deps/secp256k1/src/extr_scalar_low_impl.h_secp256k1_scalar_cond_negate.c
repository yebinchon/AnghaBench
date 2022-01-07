
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int secp256k1_scalar_negate (int *,int *) ;

__attribute__((used)) static int secp256k1_scalar_cond_negate(secp256k1_scalar *r, int flag) {
    if (flag) secp256k1_scalar_negate(r, r);
    return flag ? -1 : 1;
}
