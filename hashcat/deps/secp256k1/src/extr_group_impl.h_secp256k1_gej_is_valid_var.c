
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z; int x; int y; scalar_t__ infinity; } ;
typedef TYPE_1__ secp256k1_gej ;
typedef int secp256k1_fe ;


 int CURVE_B ;
 int secp256k1_fe_add (int *,int *) ;
 int secp256k1_fe_equal_var (int *,int *) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_fe_mul_int (int *,int ) ;
 int secp256k1_fe_normalize_weak (int *) ;
 int secp256k1_fe_sqr (int *,int *) ;

__attribute__((used)) static int secp256k1_gej_is_valid_var(const secp256k1_gej *a) {
    secp256k1_fe y2, x3, z2, z6;
    if (a->infinity) {
        return 0;
    }





    secp256k1_fe_sqr(&y2, &a->y);
    secp256k1_fe_sqr(&x3, &a->x); secp256k1_fe_mul(&x3, &x3, &a->x);
    secp256k1_fe_sqr(&z2, &a->z);
    secp256k1_fe_sqr(&z6, &z2); secp256k1_fe_mul(&z6, &z6, &z2);
    secp256k1_fe_mul_int(&z6, CURVE_B);
    secp256k1_fe_add(&x3, &z6);
    secp256k1_fe_normalize_weak(&x3);
    return secp256k1_fe_equal_var(&y2, &x3);
}
