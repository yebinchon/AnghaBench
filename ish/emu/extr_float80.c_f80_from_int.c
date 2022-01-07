
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int sign; int signif; scalar_t__ exp; } ;
typedef TYPE_1__ float80 ;


 scalar_t__ bias (int) ;
 TYPE_1__ f80_normalize (TYPE_1__) ;

float80 f80_from_int(int64_t i) {


    float80 f = {
        .signif = i,
        .exp = bias(63),
        .sign = 0,
    };
    if (i == 0)
        f.exp = 0;
    if (i < 0) {
        f.sign = 1;
        f.signif = -i;
    }
    return f80_normalize(f);
}
