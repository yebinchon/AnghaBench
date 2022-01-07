
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float64 ;
struct TYPE_3__ {int sign; int high; scalar_t__ low; } ;
typedef TYPE_1__ commonNaNT ;


 scalar_t__ float64_is_signaling_nan (int) ;
 int float_flag_invalid ;
 int float_raise (int ) ;

__attribute__((used)) static commonNaNT float64ToCommonNaN( float64 a )
{
    commonNaNT z;

    if ( float64_is_signaling_nan( a ) ) float_raise( float_flag_invalid );
    z.sign = a>>63;
    z.low = 0;
    z.high = a<<12;
    return z;

}
