
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int count ;
 int random_fe (int *) ;
 int random_fe_non_square (int *) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_set_int (int *,int) ;
 int secp256k1_fe_sqr (int *,int *) ;
 int test_sqrt (int *,int *) ;

void run_sqrt(void) {
    secp256k1_fe ns, x, s, t;
    int i;


    secp256k1_fe_set_int(&x, 0);
    secp256k1_fe_sqr(&s, &x);
    test_sqrt(&s, &x);


    for (i = 1; i <= 100; i++) {
        secp256k1_fe_set_int(&x, i);
        secp256k1_fe_sqr(&s, &x);
        test_sqrt(&s, &x);
        secp256k1_fe_negate(&t, &s, 1);
        test_sqrt(&t, ((void*)0));
    }


    for (i = 0; i < 10; i++) {
        int j;
        random_fe_non_square(&ns);
        for (j = 0; j < count; j++) {
            random_fe(&x);
            secp256k1_fe_sqr(&s, &x);
            test_sqrt(&s, &x);
            secp256k1_fe_negate(&t, &s, 1);
            test_sqrt(&t, ((void*)0));
            secp256k1_fe_mul(&t, &s, &ns);
            test_sqrt(&t, ((void*)0));
        }
    }
}
