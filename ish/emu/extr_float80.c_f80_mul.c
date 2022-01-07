
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint128_t ;
struct TYPE_12__ {int sign; int signif; int exp; } ;
typedef TYPE_1__ float80 ;


 TYPE_1__ F80_INF ;
 TYPE_1__ F80_NAN ;
 int f80_is_supported (TYPE_1__) ;
 scalar_t__ f80_isinf (TYPE_1__) ;
 scalar_t__ f80_isnan (TYPE_1__) ;
 scalar_t__ f80_iszero (TYPE_1__) ;
 TYPE_1__ u128_normalize_round (int,int,int) ;
 int unbias_denormal (int ) ;

float80 f80_mul(float80 a, float80 b) {
    if (!f80_is_supported(a) || !f80_is_supported(b))
        return F80_NAN;
    if (f80_isnan(a))
        return F80_NAN;
    if (f80_isnan(b))
        return F80_NAN;

    if (f80_isinf(a) || f80_isinf(b)) {

        if (f80_iszero(a) || f80_iszero(b))
            return F80_NAN;

        float80 f = F80_INF;
        f.sign = a.sign ^ b.sign;
        return f;
    }


    int f_exp = unbias_denormal(a.exp) + unbias_denormal(b.exp) + 1;

    uint128_t f_signif = (uint128_t) a.signif * b.signif;

    float80 f = u128_normalize_round(f_signif, f_exp, a.sign ^ b.sign);

    f.sign = a.sign ^ b.sign;
    return f;
}
