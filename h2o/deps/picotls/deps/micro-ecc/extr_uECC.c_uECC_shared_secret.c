
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int const uint8_t ;
typedef size_t uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_6__ {int num_words; int num_bytes; scalar_t__ num_n_bits; int p; } ;


 int BITS_TO_BYTES (scalar_t__) ;
 int EccPoint_isZero (size_t*,TYPE_1__*) ;
 int EccPoint_mult (size_t*,size_t*,size_t*,size_t*,scalar_t__,TYPE_1__*) ;
 int bcopy (int const*,int const*,int) ;
 scalar_t__ g_rng_function ;
 size_t regularize_k (size_t*,size_t*,size_t*,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 int uECC_generate_random_int (size_t*,int ,int) ;
 int uECC_vli_bytesToNative (size_t*,int const*,int) ;
 int uECC_vli_nativeToBytes (int const*,int,size_t*) ;

int uECC_shared_secret(const uint8_t *public_key,
                       const uint8_t *private_key,
                       uint8_t *secret,
                       uECC_Curve curve) {
    uECC_word_t _public[uECC_MAX_WORDS * 2];
    uECC_word_t _private[uECC_MAX_WORDS];

    uECC_word_t tmp[uECC_MAX_WORDS];
    uECC_word_t *p2[2] = {_private, tmp};
    uECC_word_t *initial_Z = 0;
    uECC_word_t carry;
    wordcount_t num_words = curve->num_words;
    wordcount_t num_bytes = curve->num_bytes;





    uECC_vli_bytesToNative(_private, private_key, BITS_TO_BYTES(curve->num_n_bits));
    uECC_vli_bytesToNative(_public, public_key, num_bytes);
    uECC_vli_bytesToNative(_public + num_words, public_key + num_bytes, num_bytes);




    carry = regularize_k(_private, _private, tmp, curve);



    if (g_rng_function) {
        if (!uECC_generate_random_int(p2[carry], curve->p, num_words)) {
            return 0;
        }
        initial_Z = p2[carry];
    }

    EccPoint_mult(_public, _public, p2[!carry], initial_Z, curve->num_n_bits + 1, curve);



    uECC_vli_nativeToBytes(secret, num_bytes, _public);

    return !EccPoint_isZero(_public, curve);
}
