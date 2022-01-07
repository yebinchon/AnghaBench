
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; int z; scalar_t__ infinity; } ;
typedef TYPE_1__ secp256k1_gej ;
typedef int secp256k1_fe ;


 int secp256k1_fe_add (int *,int *) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_fe_mul_int (int *,int) ;
 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_normalize_weak (int *) ;
 int secp256k1_fe_set_int (int *,int) ;
 int secp256k1_fe_sqr (int *,int *) ;

__attribute__((used)) static void secp256k1_gej_double_var(secp256k1_gej *r, const secp256k1_gej *a, secp256k1_fe *rzr) {







    secp256k1_fe t1,t2,t3,t4;
    r->infinity = a->infinity;
    if (r->infinity) {
        if (rzr != ((void*)0)) {
            secp256k1_fe_set_int(rzr, 1);
        }
        return;
    }

    if (rzr != ((void*)0)) {
        *rzr = a->y;
        secp256k1_fe_normalize_weak(rzr);
        secp256k1_fe_mul_int(rzr, 2);
    }

    secp256k1_fe_mul(&r->z, &a->z, &a->y);
    secp256k1_fe_mul_int(&r->z, 2);
    secp256k1_fe_sqr(&t1, &a->x);
    secp256k1_fe_mul_int(&t1, 3);
    secp256k1_fe_sqr(&t2, &t1);
    secp256k1_fe_sqr(&t3, &a->y);
    secp256k1_fe_mul_int(&t3, 2);
    secp256k1_fe_sqr(&t4, &t3);
    secp256k1_fe_mul_int(&t4, 2);
    secp256k1_fe_mul(&t3, &t3, &a->x);
    r->x = t3;
    secp256k1_fe_mul_int(&r->x, 4);
    secp256k1_fe_negate(&r->x, &r->x, 4);
    secp256k1_fe_add(&r->x, &t2);
    secp256k1_fe_negate(&t2, &t2, 1);
    secp256k1_fe_mul_int(&t3, 6);
    secp256k1_fe_add(&t3, &t2);
    secp256k1_fe_mul(&r->y, &t1, &t3);
    secp256k1_fe_negate(&t2, &t4, 2);
    secp256k1_fe_add(&r->y, &t2);
}
