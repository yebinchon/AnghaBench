
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sign; } ;
typedef TYPE_1__ float80 ;



float80 f80_neg(float80 f) {
    f.sign = ~f.sign;
    return f;
}
