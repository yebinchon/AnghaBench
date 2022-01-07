
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_num ;


 int secp256k1_num_negate (int *) ;
 scalar_t__ secp256k1_rand_bits (int) ;

void random_num_negate(secp256k1_num *num) {
    if (secp256k1_rand_bits(1)) {
        secp256k1_num_negate(num);
    }
}
