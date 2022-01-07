
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int member_0; } ;
struct TYPE_12__ {int* d; TYPE_1__ member_0; } ;
typedef TYPE_2__ secp256k1_scalar ;


 int CHECK (int) ;
 int count ;
 int random_scalar_order (TYPE_2__*) ;
 int secp256k1_scalar_cond_negate (TYPE_2__*,int) ;
 int secp256k1_scalar_is_zero (TYPE_2__*) ;
 int secp256k1_scalar_set_int (TYPE_2__*,int ) ;
 int test_constant_wnaf (TYPE_2__*,int) ;
 int test_constant_wnaf_negate (TYPE_2__*) ;
 int test_fixed_wnaf (TYPE_2__*,int) ;
 int test_fixed_wnaf_small () ;
 int test_wnaf (TYPE_2__*,int) ;

void run_wnaf(void) {
    int i;
    secp256k1_scalar n = {{0}};



    n.d[0] = 1;
    test_constant_wnaf(&n, 4);
    n.d[0] = 2;
    test_constant_wnaf(&n, 4);

    test_fixed_wnaf_small();

    for (i = 0; i < count; i++) {
        random_scalar_order(&n);
        test_wnaf(&n, 4+(i%10));
        test_constant_wnaf_negate(&n);
        test_constant_wnaf(&n, 4 + (i % 10));
        test_fixed_wnaf(&n, 4 + (i % 10));
    }
    secp256k1_scalar_set_int(&n, 0);
    CHECK(secp256k1_scalar_cond_negate(&n, 1) == -1);
    CHECK(secp256k1_scalar_is_zero(&n));
    CHECK(secp256k1_scalar_cond_negate(&n, 0) == 1);
    CHECK(secp256k1_scalar_is_zero(&n));
}
