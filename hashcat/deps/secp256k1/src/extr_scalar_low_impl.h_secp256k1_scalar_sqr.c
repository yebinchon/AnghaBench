
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int const EXHAUSTIVE_TEST_ORDER ;

__attribute__((used)) static void secp256k1_scalar_sqr(secp256k1_scalar *r, const secp256k1_scalar *a) {
    *r = (*a * *a) % EXHAUSTIVE_TEST_ORDER;
}
