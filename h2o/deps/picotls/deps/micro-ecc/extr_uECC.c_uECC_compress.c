
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int uint8_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_3__ {int num_bytes; } ;



void uECC_compress(const uint8_t *public_key, uint8_t *compressed, uECC_Curve curve) {
    wordcount_t i;
    for (i = 0; i < curve->num_bytes; ++i) {
        compressed[i+1] = public_key[i];
    }



    compressed[0] = 2 + (public_key[curve->num_bytes * 2 - 1] & 0x01);

}
