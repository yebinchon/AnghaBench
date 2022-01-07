
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uECC_word_t ;
struct TYPE_4__ {int p; } ;


 TYPE_1__ curve_secp224r1 ;
 int num_words_secp224r1 ;
 int uECC_vli_modAdd (int const*,int const*,int const*,int ,int) ;
 int uECC_vli_modMult_fast (int const*,int const*,int const*,TYPE_1__*) ;
 int uECC_vli_modSquare_fast (int const*,int const*,TYPE_1__*) ;

__attribute__((used)) static void mod_sqrt_secp224r1_rs(uECC_word_t *d1,
                                  uECC_word_t *e1,
                                  uECC_word_t *f1,
                                  const uECC_word_t *d0,
                                  const uECC_word_t *e0,
                                  const uECC_word_t *f0) {
    uECC_word_t t[num_words_secp224r1];

    uECC_vli_modSquare_fast(t, d0, &curve_secp224r1);
    uECC_vli_modMult_fast(e1, d0, e0, &curve_secp224r1);
    uECC_vli_modAdd(d1, t, f0, curve_secp224r1.p, num_words_secp224r1);
    uECC_vli_modAdd(e1, e1, e1, curve_secp224r1.p, num_words_secp224r1);
    uECC_vli_modMult_fast(f1, t, f0, &curve_secp224r1);
    uECC_vli_modAdd(f1, f1, f1, curve_secp224r1.p, num_words_secp224r1);
    uECC_vli_modAdd(f1, f1, f1, curve_secp224r1.p, num_words_secp224r1);
}
