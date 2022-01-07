
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int exp; scalar_t__ sign; } ;
typedef TYPE_1__ float80 ;


 TYPE_1__ F80_NAN ;
 int bias (int) ;
 TYPE_1__ f80_add (TYPE_1__,TYPE_1__) ;
 TYPE_1__ f80_div (TYPE_1__,TYPE_1__) ;
 int f80_eq (TYPE_1__,TYPE_1__) ;
 TYPE_1__ f80_from_int (int) ;
 scalar_t__ f80_isnan (TYPE_1__) ;
 int unbias (int ) ;

float80 f80_sqrt(float80 x) {
    if (f80_isnan(x) || x.sign)
        return F80_NAN;

    float80 guess = x;
    guess.exp = bias(unbias(guess.exp) / 2);

    float80 old_guess;
    float80 two = f80_from_int(2);
    int i = 0;
    do {
        old_guess = guess;
        guess = f80_div(f80_add(guess, f80_div(x, guess)), two);
    } while (!f80_eq(guess, old_guess) && i++ < 100);
    return guess;
}
