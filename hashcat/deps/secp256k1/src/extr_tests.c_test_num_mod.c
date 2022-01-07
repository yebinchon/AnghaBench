
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_num ;


 int CHECK (int ) ;
 int random_scalar_order_test (int *) ;
 int secp256k1_num_add (int *,int *,int *) ;
 int secp256k1_num_is_zero (int *) ;
 int secp256k1_num_mod (int *,int *) ;
 int secp256k1_scalar_get_num (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

void test_num_mod(void) {
    int i;
    secp256k1_scalar s;
    secp256k1_num order, n;


    random_scalar_order_test(&s);
    secp256k1_scalar_get_num(&order, &s);
    secp256k1_scalar_set_int(&s, 0);
    secp256k1_scalar_get_num(&n, &s);
    secp256k1_num_mod(&n, &order);
    CHECK(secp256k1_num_is_zero(&n));


    secp256k1_scalar_set_int(&s, 1);
    secp256k1_scalar_get_num(&order, &s);
    secp256k1_scalar_get_num(&n, &s);
    secp256k1_num_mod(&n, &order);
    CHECK(secp256k1_num_is_zero(&n));


    random_scalar_order_test(&s);
    secp256k1_scalar_get_num(&n, &s);

    for (i = 0; i < 8; ++i) {
        secp256k1_num_add(&n, &n, &n);
    }
    secp256k1_num_mod(&n, &order);
    CHECK(secp256k1_num_is_zero(&n));
}
