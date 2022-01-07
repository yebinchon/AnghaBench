
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int EXHAUSTIVE_TEST_ORDER ;

__attribute__((used)) static int secp256k1_scalar_is_high(const secp256k1_scalar *a) {
    return *a > EXHAUSTIVE_TEST_ORDER / 2;
}
