
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef unsigned int secp256k1_scalar ;


 unsigned int EXHAUSTIVE_TEST_ORDER ;
 unsigned int UINT32_MAX ;
 int VERIFY_CHECK (int) ;
 scalar_t__ secp256k1_scalar_check_overflow (unsigned int*) ;

__attribute__((used)) static void secp256k1_scalar_cadd_bit(secp256k1_scalar *r, unsigned int bit, int flag) {
    if (flag && bit < 32)
        *r += ((uint32_t)1 << bit);






}
