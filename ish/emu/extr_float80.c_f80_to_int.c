
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {scalar_t__ exp; int signif; int sign; } ;
typedef TYPE_1__ float80 ;


 int INT64_MAX ;
 int INT64_MIN ;
 scalar_t__ bias (int) ;
 int f80_is_supported (TYPE_1__) ;
 TYPE_1__ f80_shift_right (TYPE_1__,scalar_t__) ;

int64_t f80_to_int(float80 f) {
    if (!f80_is_supported(f))
        return INT64_MIN;


    if (f.exp > bias(63))
        return !f.sign ? INT64_MAX : INT64_MIN;

    f = f80_shift_right(f, bias(63) - f.exp);

    return !f.sign ? f.signif : -f.signif;
}
