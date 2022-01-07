
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uECC_word_t ;
typedef int uECC_Curve ;


 int uECC_MAX_WORDS ;
 int uECC_vli_modMult_fast (int const*,int const*,int const*,int ) ;
 int uECC_vli_modSquare_fast (int const*,int const* const,int ) ;

__attribute__((used)) static void apply_z(uECC_word_t * X1,
                    uECC_word_t * Y1,
                    const uECC_word_t * const Z,
                    uECC_Curve curve) {
    uECC_word_t t1[uECC_MAX_WORDS];

    uECC_vli_modSquare_fast(t1, Z, curve);
    uECC_vli_modMult_fast(X1, X1, t1, curve);
    uECC_vli_modMult_fast(t1, t1, Z, curve);
    uECC_vli_modMult_fast(Y1, Y1, t1, curve);
}
