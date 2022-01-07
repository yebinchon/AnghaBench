
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wordcount_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_6__ {int num_words; int (* x_side ) (int *,int const*,TYPE_1__*) ;int p; } ;


 scalar_t__ EccPoint_isZero (int const*,TYPE_1__*) ;
 int stub1 (int *,int const*,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 int uECC_vli_cmp_unsafe (int ,int const*,int) ;
 scalar_t__ uECC_vli_equal (int *,int *,int) ;
 int uECC_vli_modSquare_fast (int *,int const*,TYPE_1__*) ;

int uECC_valid_point(const uECC_word_t *point, uECC_Curve curve) {
    uECC_word_t tmp1[uECC_MAX_WORDS];
    uECC_word_t tmp2[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;


    if (EccPoint_isZero(point, curve)) {
        return 0;
    }


    if (uECC_vli_cmp_unsafe(curve->p, point, num_words) != 1 ||
            uECC_vli_cmp_unsafe(curve->p, point + num_words, num_words) != 1) {
        return 0;
    }

    uECC_vli_modSquare_fast(tmp1, point + num_words, curve);
    curve->x_side(tmp2, point, curve);


    return (int)(uECC_vli_equal(tmp1, tmp2, num_words));
}
