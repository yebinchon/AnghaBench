
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float32 ;
struct TYPE_3__ {int sign; int high; scalar_t__ low; } ;
typedef TYPE_1__ commonNaNT ;
typedef int bits64 ;


 scalar_t__ float32_is_signaling_nan (int) ;
 int float_flag_invalid ;
 int float_raise (int ) ;

__attribute__((used)) static commonNaNT float32ToCommonNaN( float32 a )
{
    commonNaNT z;

    if ( float32_is_signaling_nan( a ) ) float_raise( float_flag_invalid );
    z.sign = a>>31;
    z.low = 0;
    z.high = ( (bits64) a )<<41;
    return z;

}
