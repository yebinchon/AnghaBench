
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 scalar_t__ secp256k1_fe_set_b32 (int *,unsigned char*) ;
 int secp256k1_rand256_test (unsigned char*) ;

void random_fe_test(secp256k1_fe *x) {
    unsigned char bin[32];
    do {
        secp256k1_rand256_test(bin);
        if (secp256k1_fe_set_b32(x, bin)) {
            return;
        }
    } while(1);
}
