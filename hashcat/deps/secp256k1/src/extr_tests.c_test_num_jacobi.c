
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_num ;


 int CHECK (int) ;
 int random_scalar_order_test (int *) ;
 int secp256k1_num_add (int *,int *,int *) ;
 scalar_t__ secp256k1_num_is_zero (int *) ;
 int secp256k1_num_jacobi (int *,int *) ;
 int secp256k1_num_mod (int *,int *) ;
 int secp256k1_num_sub (int *,int *,int *) ;
 int secp256k1_scalar_get_num (int *,int *) ;
 int secp256k1_scalar_mul (int *,int *,int *) ;
 int secp256k1_scalar_order_get_num (int *) ;
 int secp256k1_scalar_set_int (int *,int) ;
 int secp256k1_scalar_sqr (int *,int *) ;

void test_num_jacobi(void) {
    secp256k1_scalar sqr;
    secp256k1_scalar small;
    secp256k1_scalar five;
    secp256k1_num order, n;
    int i;

    const int jacobi5[10] = { 0, 1, -1, -1, 1, 0, 1, -1, -1, 1 };


    secp256k1_scalar_set_int(&five, 5);
    secp256k1_scalar_get_num(&order, &five);
    for (i = 0; i < 10; ++i) {
        secp256k1_scalar_set_int(&small, i);
        secp256k1_scalar_get_num(&n, &small);
        CHECK(secp256k1_num_jacobi(&n, &order) == jacobi5[i]);
    }


    secp256k1_scalar_get_num(&order, &five);

    do {
        secp256k1_num fiven;
        random_scalar_order_test(&sqr);
        secp256k1_scalar_get_num(&fiven, &five);
        secp256k1_scalar_get_num(&n, &sqr);
        secp256k1_num_mod(&n, &fiven);
    } while (secp256k1_num_is_zero(&n));


    if (secp256k1_num_jacobi(&n, &order) == -1) {
        secp256k1_num_add(&n, &n, &n);
    }


    CHECK(secp256k1_num_jacobi(&n, &order) == 1);

    secp256k1_num_add(&n, &n, &n);
    CHECK(secp256k1_num_jacobi(&n, &order) == -1);


    secp256k1_scalar_order_get_num(&order);
    random_scalar_order_test(&sqr);
    secp256k1_scalar_sqr(&sqr, &sqr);

    secp256k1_scalar_get_num(&n, &sqr);
    CHECK(secp256k1_num_jacobi(&n, &order) == 1);

    secp256k1_scalar_mul(&sqr, &sqr, &five);
    secp256k1_scalar_get_num(&n, &sqr);
    CHECK(secp256k1_num_jacobi(&n, &order) == -1);

    CHECK(secp256k1_num_jacobi(&order, &order) == 0);


    secp256k1_scalar_set_int(&small, 1);
    secp256k1_scalar_get_num(&n, &small);
    secp256k1_num_sub(&n, &order, &n);
    CHECK(secp256k1_num_jacobi(&n, &order) == 1);
}
