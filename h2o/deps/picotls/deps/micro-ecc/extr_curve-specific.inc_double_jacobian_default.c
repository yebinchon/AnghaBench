
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int num_words; int p; } ;


 int uECC_MAX_WORDS ;
 int uECC_WORD_BITS ;
 int uECC_vli_add (int*,int*,int ,int) ;
 scalar_t__ uECC_vli_isZero (int*,int) ;
 int uECC_vli_modAdd (int*,int*,int*,int ,int) ;
 int uECC_vli_modMult_fast (int*,int*,int*,TYPE_1__*) ;
 int uECC_vli_modSquare_fast (int*,int*,TYPE_1__*) ;
 int uECC_vli_modSub (int*,int*,int*,int ,int) ;
 int uECC_vli_rshift1 (int*,int) ;
 int uECC_vli_set (int*,int*,int) ;
 scalar_t__ uECC_vli_testBit (int*,int ) ;

__attribute__((used)) static void double_jacobian_default(uECC_word_t * X1,
                                    uECC_word_t * Y1,
                                    uECC_word_t * Z1,
                                    uECC_Curve curve) {

    uECC_word_t t4[uECC_MAX_WORDS];
    uECC_word_t t5[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    if (uECC_vli_isZero(Z1, num_words)) {
        return;
    }

    uECC_vli_modSquare_fast(t4, Y1, curve);
    uECC_vli_modMult_fast(t5, X1, t4, curve);
    uECC_vli_modSquare_fast(t4, t4, curve);
    uECC_vli_modMult_fast(Y1, Y1, Z1, curve);
    uECC_vli_modSquare_fast(Z1, Z1, curve);

    uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
    uECC_vli_modAdd(Z1, Z1, Z1, curve->p, num_words);
    uECC_vli_modSub(Z1, X1, Z1, curve->p, num_words);
    uECC_vli_modMult_fast(X1, X1, Z1, curve);

    uECC_vli_modAdd(Z1, X1, X1, curve->p, num_words);
    uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
    if (uECC_vli_testBit(X1, 0)) {
        uECC_word_t l_carry = uECC_vli_add(X1, X1, curve->p, num_words);
        uECC_vli_rshift1(X1, num_words);
        X1[num_words - 1] |= l_carry << (uECC_WORD_BITS - 1);
    } else {
        uECC_vli_rshift1(X1, num_words);
    }


    uECC_vli_modSquare_fast(Z1, X1, curve);
    uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
    uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
    uECC_vli_modSub(t5, t5, Z1, curve->p, num_words);
    uECC_vli_modMult_fast(X1, X1, t5, curve);
    uECC_vli_modSub(t4, X1, t4, curve->p, num_words);

    uECC_vli_set(X1, Z1, num_words);
    uECC_vli_set(Z1, Y1, num_words);
    uECC_vli_set(Y1, t4, num_words);
}
