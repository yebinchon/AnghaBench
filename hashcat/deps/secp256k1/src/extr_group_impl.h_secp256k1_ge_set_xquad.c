
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; scalar_t__ infinity; int x; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int CURVE_B ;
 int secp256k1_fe_add (int *,int *) ;
 int secp256k1_fe_mul (int *,int const*,int *) ;
 int secp256k1_fe_set_int (int *,int ) ;
 int secp256k1_fe_sqr (int *,int const*) ;
 int secp256k1_fe_sqrt (int *,int *) ;

__attribute__((used)) static int secp256k1_ge_set_xquad(secp256k1_ge *r, const secp256k1_fe *x) {
    secp256k1_fe x2, x3, c;
    r->x = *x;
    secp256k1_fe_sqr(&x2, x);
    secp256k1_fe_mul(&x3, x, &x2);
    r->infinity = 0;
    secp256k1_fe_set_int(&c, CURVE_B);
    secp256k1_fe_add(&c, &x3);
    return secp256k1_fe_sqrt(&r->y, &c);
}
