
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int8 ;
typedef int int32 ;
typedef int float64 ;
typedef int flag ;
typedef int bits64 ;


 int countLeadingZeros32 (int) ;
 int packFloat64 (int,int,int) ;

float64 int32_to_float64( int32 a )
{
    flag aSign;
    uint32 absA;
    int8 shiftCount;
    bits64 zSig;

    if ( a == 0 ) return 0;
    aSign = ( a < 0 );
    absA = aSign ? - a : a;
    shiftCount = countLeadingZeros32( absA ) + 21;
    zSig = absA;
    return packFloat64( aSign, 0x432 - shiftCount, zSig<<shiftCount );

}
