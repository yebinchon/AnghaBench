
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_4__ {int num_bytes; int num_words; int num_n_bits; int n; } ;


 int BITS_TO_BYTES (int ) ;
 int BITS_TO_WORDS (int ) ;
 scalar_t__ EccPoint_compute_public_key (scalar_t__*,scalar_t__*,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 scalar_t__ uECC_RNG_MAX_TRIES ;
 int uECC_generate_random_int (scalar_t__*,int ,int ) ;
 int uECC_vli_nativeToBytes (int *,int,scalar_t__*) ;

int uECC_make_key(uint8_t *public_key,
                  uint8_t *private_key,
                  uECC_Curve curve) {




    uECC_word_t _private[uECC_MAX_WORDS];
    uECC_word_t _public[uECC_MAX_WORDS * 2];

    uECC_word_t tries;

    for (tries = 0; tries < uECC_RNG_MAX_TRIES; ++tries) {
        if (!uECC_generate_random_int(_private, curve->n, BITS_TO_WORDS(curve->num_n_bits))) {
            return 0;
        }

        if (EccPoint_compute_public_key(_public, _private, curve)) {

            uECC_vli_nativeToBytes(private_key, BITS_TO_BYTES(curve->num_n_bits), _private);
            uECC_vli_nativeToBytes(public_key, curve->num_bytes, _public);
            uECC_vli_nativeToBytes(
                public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);

            return 1;
        }
    }
    return 0;
}
