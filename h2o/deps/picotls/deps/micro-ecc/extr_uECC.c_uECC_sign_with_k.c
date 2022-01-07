
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int const uint8_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
typedef int bitcount_t ;
struct TYPE_6__ {int num_words; int num_n_bits; scalar_t__ num_bytes; int n; int G; } ;


 scalar_t__ BITS_TO_BYTES (int) ;
 int BITS_TO_WORDS (int) ;
 int EccPoint_mult (int*,int ,int*,int ,int,TYPE_1__*) ;
 int bcopy (int const*,int const*,scalar_t__) ;
 int bits2int (int*,int const*,unsigned int,TYPE_1__*) ;
 int g_rng_function ;
 int regularize_k (int*,int*,int*,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 int uECC_generate_random_int (int*,int ,int) ;
 int uECC_vli_bytesToNative (int*,int const*,scalar_t__) ;
 int uECC_vli_clear (int*,int) ;
 int uECC_vli_cmp (int ,int*,int) ;
 scalar_t__ uECC_vli_isZero (int*,int) ;
 int uECC_vli_modAdd (int*,int*,int*,int ,int) ;
 int uECC_vli_modInv (int*,int*,int ,int) ;
 int uECC_vli_modMult (int*,int*,int*,int ,int) ;
 int uECC_vli_nativeToBytes (int const*,scalar_t__,int*) ;
 int uECC_vli_numBits (int*,int) ;
 int uECC_vli_set (int*,int*,int) ;

__attribute__((used)) static int uECC_sign_with_k(const uint8_t *private_key,
                            const uint8_t *message_hash,
                            unsigned hash_size,
                            uECC_word_t *k,
                            uint8_t *signature,
                            uECC_Curve curve) {

    uECC_word_t tmp[uECC_MAX_WORDS];
    uECC_word_t s[uECC_MAX_WORDS];
    uECC_word_t *k2[2] = {tmp, s};



    uECC_word_t p[uECC_MAX_WORDS * 2];

    uECC_word_t carry;
    wordcount_t num_words = curve->num_words;
    wordcount_t num_n_words = BITS_TO_WORDS(curve->num_n_bits);
    bitcount_t num_n_bits = curve->num_n_bits;


    if (uECC_vli_isZero(k, num_words) || uECC_vli_cmp(curve->n, k, num_n_words) != 1) {
        return 0;
    }

    carry = regularize_k(k, tmp, s, curve);
    EccPoint_mult(p, curve->G, k2[!carry], 0, num_n_bits + 1, curve);
    if (uECC_vli_isZero(p, num_words)) {
        return 0;
    }



    if (!g_rng_function) {
        uECC_vli_clear(tmp, num_n_words);
        tmp[0] = 1;
    } else if (!uECC_generate_random_int(tmp, curve->n, num_n_words)) {
        return 0;
    }



    uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);
    uECC_vli_modInv(k, k, curve->n, num_n_words);
    uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);


    uECC_vli_nativeToBytes(signature, curve->num_bytes, p);





    uECC_vli_bytesToNative(tmp, private_key, BITS_TO_BYTES(curve->num_n_bits));


    s[num_n_words - 1] = 0;
    uECC_vli_set(s, p, num_words);
    uECC_vli_modMult(s, tmp, s, curve->n, num_n_words);

    bits2int(tmp, message_hash, hash_size, curve);
    uECC_vli_modAdd(s, tmp, s, curve->n, num_n_words);
    uECC_vli_modMult(s, s, k, curve->n, num_n_words);
    if (uECC_vli_numBits(s, num_n_words) > (bitcount_t)curve->num_bytes * 8) {
        return 0;
    }



    uECC_vli_nativeToBytes(signature + curve->num_bytes, curve->num_bytes, s);

    return 1;
}
