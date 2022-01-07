
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_4__ {int num_bytes; int num_words; int num_n_bits; int n; } ;


 int BITS_TO_BYTES (int ) ;
 int BITS_TO_WORDS (int ) ;
 int EccPoint_compute_public_key (int *,int *,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 int uECC_vli_bytesToNative (int *,int const*,int ) ;
 int uECC_vli_cmp (int ,int *,int ) ;
 scalar_t__ uECC_vli_isZero (int *,int ) ;
 int uECC_vli_nativeToBytes (int *,int,int *) ;

int uECC_compute_public_key(const uint8_t *private_key, uint8_t *public_key, uECC_Curve curve) {




    uECC_word_t _private[uECC_MAX_WORDS];
    uECC_word_t _public[uECC_MAX_WORDS * 2];



    uECC_vli_bytesToNative(_private, private_key, BITS_TO_BYTES(curve->num_n_bits));



    if (uECC_vli_isZero(_private, BITS_TO_WORDS(curve->num_n_bits))) {
        return 0;
    }

    if (uECC_vli_cmp(curve->n, _private, BITS_TO_WORDS(curve->num_n_bits)) != 1) {
        return 0;
    }


    if (!EccPoint_compute_public_key(_public, _private, curve)) {
        return 0;
    }


    uECC_vli_nativeToBytes(public_key, curve->num_bytes, _public);
    uECC_vli_nativeToBytes(
        public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);

    return 1;
}
