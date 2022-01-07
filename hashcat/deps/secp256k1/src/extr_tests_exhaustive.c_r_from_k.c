
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
struct TYPE_3__ {int x; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int EXHAUSTIVE_TEST_ORDER ;
 int secp256k1_fe_get_b32 (unsigned char*,int *) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int *) ;

void r_from_k(secp256k1_scalar *r, const secp256k1_ge *group, int k) {
    secp256k1_fe x;
    unsigned char x_bin[32];
    k %= EXHAUSTIVE_TEST_ORDER;
    x = group[k].x;
    secp256k1_fe_normalize(&x);
    secp256k1_fe_get_b32(x_bin, &x);
    secp256k1_scalar_set_b32(r, x_bin, ((void*)0));
}
