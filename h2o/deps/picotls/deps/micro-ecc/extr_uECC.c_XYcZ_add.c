
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int p; int num_words; } ;


 int uECC_MAX_WORDS ;
 int uECC_vli_modMult_fast (int *,int *,int *,TYPE_1__*) ;
 int uECC_vli_modSquare_fast (int *,int *,TYPE_1__*) ;
 int uECC_vli_modSub (int *,int *,int *,int ,int ) ;
 int uECC_vli_set (int *,int *,int ) ;

__attribute__((used)) static void XYcZ_add(uECC_word_t * X1,
                     uECC_word_t * Y1,
                     uECC_word_t * X2,
                     uECC_word_t * Y2,
                     uECC_Curve curve) {

    uECC_word_t t5[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    uECC_vli_modSub(t5, X2, X1, curve->p, num_words);
    uECC_vli_modSquare_fast(t5, t5, curve);
    uECC_vli_modMult_fast(X1, X1, t5, curve);
    uECC_vli_modMult_fast(X2, X2, t5, curve);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);
    uECC_vli_modSquare_fast(t5, Y2, curve);

    uECC_vli_modSub(t5, t5, X1, curve->p, num_words);
    uECC_vli_modSub(t5, t5, X2, curve->p, num_words);
    uECC_vli_modSub(X2, X2, X1, curve->p, num_words);
    uECC_vli_modMult_fast(Y1, Y1, X2, curve);
    uECC_vli_modSub(X2, X1, t5, curve->p, num_words);
    uECC_vli_modMult_fast(Y2, Y2, X2, curve);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

    uECC_vli_set(X2, t5, num_words);
}
