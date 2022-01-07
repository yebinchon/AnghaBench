
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float64 ;
struct TYPE_3__ {int high; scalar_t__ sign; } ;
typedef TYPE_1__ commonNaNT ;
typedef int bits64 ;


 int LIT64 (int) ;

__attribute__((used)) static float64 commonNaNToFloat64( commonNaNT a )
{

    return
          ( ( (bits64) a.sign )<<63 )
        | LIT64( 0x7FF8000000000000 )
        | ( a.high>>12 );

}
