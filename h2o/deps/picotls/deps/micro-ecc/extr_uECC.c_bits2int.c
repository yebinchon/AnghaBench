
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_3__ {unsigned int num_n_bits; int n; } ;


 unsigned int BITS_TO_BYTES (unsigned int) ;
 unsigned int BITS_TO_WORDS (unsigned int) ;
 int bcopy (int *,int const*,unsigned int) ;
 int uECC_WORD_BITS ;
 int uECC_vli_bytesToNative (int*,int const*,unsigned int) ;
 int uECC_vli_clear (int*,unsigned int) ;
 int uECC_vli_cmp_unsafe (int ,int*,unsigned int) ;
 int uECC_vli_sub (int*,int*,int ,unsigned int) ;

__attribute__((used)) static void bits2int(uECC_word_t *native,
                     const uint8_t *bits,
                     unsigned bits_size,
                     uECC_Curve curve) {
    unsigned num_n_bytes = BITS_TO_BYTES(curve->num_n_bits);
    unsigned num_n_words = BITS_TO_WORDS(curve->num_n_bits);
    int shift;
    uECC_word_t carry;
    uECC_word_t *ptr;

    if (bits_size > num_n_bytes) {
        bits_size = num_n_bytes;
    }

    uECC_vli_clear(native, num_n_words);



    uECC_vli_bytesToNative(native, bits, bits_size);

    if (bits_size * 8 <= (unsigned)curve->num_n_bits) {
        return;
    }
    shift = bits_size * 8 - curve->num_n_bits;
    carry = 0;
    ptr = native + num_n_words;
    while (ptr-- > native) {
        uECC_word_t temp = *ptr;
        *ptr = (temp >> shift) | carry;
        carry = temp << (uECC_WORD_BITS - shift);
    }


    if (uECC_vli_cmp_unsafe(curve->n, native, num_n_words) != 1) {
        uECC_vli_sub(native, native, curve->n, num_n_words);
    }
}
