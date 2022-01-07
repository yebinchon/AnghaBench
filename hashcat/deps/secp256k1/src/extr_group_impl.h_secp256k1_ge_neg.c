
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; } ;
typedef TYPE_1__ secp256k1_ge ;


 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_normalize_weak (int *) ;

__attribute__((used)) static void secp256k1_ge_neg(secp256k1_ge *r, const secp256k1_ge *a) {
    *r = *a;
    secp256k1_fe_normalize_weak(&r->y);
    secp256k1_fe_negate(&r->y, &r->y, 1);
}
