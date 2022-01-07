
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_4__ {int num_bytes; int num_words; } ;


 int uECC_MAX_WORDS ;
 int uECC_valid_point (int *,TYPE_1__*) ;
 int uECC_vli_bytesToNative (int *,int const*,int) ;

int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve) {



    uECC_word_t _public[uECC_MAX_WORDS * 2];



    uECC_vli_bytesToNative(_public, public_key, curve->num_bytes);
    uECC_vli_bytesToNative(
        _public + curve->num_words, public_key + curve->num_bytes, curve->num_bytes);

    return uECC_valid_point(_public, curve);
}
