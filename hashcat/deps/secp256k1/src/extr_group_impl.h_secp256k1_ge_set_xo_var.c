
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int secp256k1_fe_is_odd (int *) ;
 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_normalize_var (int *) ;
 int secp256k1_ge_set_xquad (TYPE_1__*,int const*) ;

__attribute__((used)) static int secp256k1_ge_set_xo_var(secp256k1_ge *r, const secp256k1_fe *x, int odd) {
    if (!secp256k1_ge_set_xquad(r, x)) {
        return 0;
    }
    secp256k1_fe_normalize_var(&r->y);
    if (secp256k1_fe_is_odd(&r->y) != odd) {
        secp256k1_fe_negate(&r->y, &r->y, 1);
    }
    return 1;

}
