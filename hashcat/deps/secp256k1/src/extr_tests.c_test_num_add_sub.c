
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_num ;


 int CHECK (int) ;
 int random_num_negate (int *) ;
 int random_num_order_test (int *) ;
 int secp256k1_num_add (int *,int *,int *) ;
 int secp256k1_num_eq (int *,int *) ;
 int secp256k1_num_is_one (int *) ;
 int secp256k1_num_negate (int *) ;
 int secp256k1_num_sub (int *,int *,int *) ;
 scalar_t__ secp256k1_rand_bits (int) ;
 int secp256k1_scalar_get_num (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

void test_num_add_sub(void) {
    int i;
    secp256k1_scalar s;
    secp256k1_num n1;
    secp256k1_num n2;
    secp256k1_num n1p2, n2p1, n1m2, n2m1;
    random_num_order_test(&n1);
    if (secp256k1_rand_bits(1)) {
        random_num_negate(&n1);
    }
    random_num_order_test(&n2);
    if (secp256k1_rand_bits(1)) {
        random_num_negate(&n2);
    }
    secp256k1_num_add(&n1p2, &n1, &n2);
    secp256k1_num_add(&n2p1, &n2, &n1);
    secp256k1_num_sub(&n1m2, &n1, &n2);
    secp256k1_num_sub(&n2m1, &n2, &n1);
    CHECK(secp256k1_num_eq(&n1p2, &n2p1));
    CHECK(!secp256k1_num_eq(&n1p2, &n1m2));
    secp256k1_num_negate(&n2m1);
    CHECK(secp256k1_num_eq(&n2m1, &n1m2));
    CHECK(!secp256k1_num_eq(&n2m1, &n1));
    secp256k1_num_add(&n2m1, &n2m1, &n2);
    CHECK(secp256k1_num_eq(&n2m1, &n1));
    CHECK(!secp256k1_num_eq(&n2p1, &n1));
    secp256k1_num_sub(&n2p1, &n2p1, &n2);
    CHECK(secp256k1_num_eq(&n2p1, &n1));


    secp256k1_scalar_set_int(&s, 1);
    secp256k1_scalar_get_num(&n1, &s);
    CHECK(secp256k1_num_is_one(&n1));

    secp256k1_scalar_get_num(&n2, &s);
    for (i = 0; i < 250; ++i) {
        secp256k1_num_add(&n1, &n1, &n1);
        secp256k1_num_add(&n1p2, &n1, &n2);
        CHECK(!secp256k1_num_is_one(&n1p2));
    }
}
