
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_num ;


 int CHECK (int) ;
 int random_num_negate (int *) ;
 int random_num_order_test (int *) ;
 int secp256k1_num_add (int *,int *,int *) ;
 int secp256k1_num_copy (int *,int *) ;
 int secp256k1_num_eq (int *,int *) ;
 scalar_t__ secp256k1_num_is_neg (int *) ;
 int secp256k1_num_is_zero (int *) ;
 int secp256k1_num_negate (int *) ;
 int secp256k1_num_sub (int *,int *,int *) ;

void test_num_negate(void) {
    secp256k1_num n1;
    secp256k1_num n2;
    random_num_order_test(&n1);
    random_num_negate(&n1);
    secp256k1_num_copy(&n2, &n1);
    secp256k1_num_sub(&n1, &n2, &n1);
    CHECK(secp256k1_num_is_zero(&n1));
    secp256k1_num_copy(&n1, &n2);
    secp256k1_num_negate(&n1);
    CHECK(!secp256k1_num_is_zero(&n1));
    secp256k1_num_add(&n1, &n2, &n1);
    CHECK(secp256k1_num_is_zero(&n1));
    secp256k1_num_copy(&n1, &n2);
    secp256k1_num_negate(&n1);
    CHECK(secp256k1_num_is_neg(&n1) != secp256k1_num_is_neg(&n2));
    secp256k1_num_negate(&n1);
    CHECK(secp256k1_num_eq(&n1, &n2));
}
