
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int secp256k1_fe_mul_int (int *,int) ;
 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_fe_set_int (int *,int) ;
 int secp256k1_fe_sqr (int *,int *) ;

void run_sqr(void) {
    secp256k1_fe x, s;

    {
        int i;
        secp256k1_fe_set_int(&x, 1);
        secp256k1_fe_negate(&x, &x, 1);

        for (i = 1; i <= 512; ++i) {
            secp256k1_fe_mul_int(&x, 2);
            secp256k1_fe_normalize(&x);
            secp256k1_fe_sqr(&s, &x);
        }
    }
}
