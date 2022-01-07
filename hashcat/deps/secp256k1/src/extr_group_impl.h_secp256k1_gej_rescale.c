
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z; int y; int x; } ;
typedef TYPE_1__ secp256k1_gej ;
typedef int const secp256k1_fe ;


 int VERIFY_CHECK (int) ;
 int secp256k1_fe_is_zero (int const*) ;
 int secp256k1_fe_mul (int *,int *,int const*) ;
 int secp256k1_fe_sqr (int const*,int const*) ;

__attribute__((used)) static void secp256k1_gej_rescale(secp256k1_gej *r, const secp256k1_fe *s) {

    secp256k1_fe zz;
    VERIFY_CHECK(!secp256k1_fe_is_zero(s));
    secp256k1_fe_sqr(&zz, s);
    secp256k1_fe_mul(&r->x, &r->x, &zz);
    secp256k1_fe_mul(&r->y, &r->y, &zz);
    secp256k1_fe_mul(&r->y, &r->y, s);
    secp256k1_fe_mul(&r->z, &r->z, s);
}
