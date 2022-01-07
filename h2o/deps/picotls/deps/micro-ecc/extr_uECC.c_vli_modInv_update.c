
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wordcount_t ;
typedef scalar_t__ uECC_word_t ;


 int EVEN (scalar_t__*) ;
 scalar_t__ HIGH_BIT_SET ;
 scalar_t__ uECC_vli_add (scalar_t__*,scalar_t__*,scalar_t__ const*,int) ;
 int uECC_vli_rshift1 (scalar_t__*,int) ;

__attribute__((used)) static void vli_modInv_update(uECC_word_t *uv,
                              const uECC_word_t *mod,
                              wordcount_t num_words) {
    uECC_word_t carry = 0;
    if (!EVEN(uv)) {
        carry = uECC_vli_add(uv, uv, mod, num_words);
    }
    uECC_vli_rshift1(uv, num_words);
    if (carry) {
        uv[num_words - 1] |= HIGH_BIT_SET;
    }
}
