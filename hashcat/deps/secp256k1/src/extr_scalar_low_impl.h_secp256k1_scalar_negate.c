
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ secp256k1_scalar ;


 scalar_t__ const EXHAUSTIVE_TEST_ORDER ;

__attribute__((used)) static void secp256k1_scalar_negate(secp256k1_scalar *r, const secp256k1_scalar *a) {
    if (*a == 0) {
        *r = 0;
    } else {
        *r = EXHAUSTIVE_TEST_ORDER - *a;
    }
}
