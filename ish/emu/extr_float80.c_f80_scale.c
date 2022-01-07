
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint128_t ;
struct TYPE_8__ {int sign; int exp; scalar_t__ signif; } ;
typedef TYPE_1__ float80 ;


 TYPE_1__ F80_NAN ;
 int f80_is_supported (TYPE_1__) ;
 scalar_t__ f80_isnan (TYPE_1__) ;
 TYPE_1__ u128_normalize_round (int,scalar_t__,int ) ;
 scalar_t__ unbias (int ) ;

float80 f80_scale(float80 x, int scale) {
    if (!f80_is_supported(x) || f80_isnan(x))
        return F80_NAN;
    return u128_normalize_round((uint128_t) x.signif << 64, unbias(x.exp) + scale, x.sign);
}
