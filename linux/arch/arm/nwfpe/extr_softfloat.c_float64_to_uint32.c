
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int int32 ;
typedef scalar_t__ int16 ;
typedef int float64 ;
typedef scalar_t__ flag ;
typedef int bits64 ;


 int LIT64 (int) ;
 scalar_t__ extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 int roundAndPackInt32 (struct roundingData*,scalar_t__,int ) ;
 int shift64RightJamming (int ,scalar_t__,int *) ;

int32 float64_to_uint32( struct roundingData *roundData, float64 a )
{
    flag aSign;
    int16 aExp, shiftCount;
    bits64 aSig;

    aSig = extractFloat64Frac( a );
    aExp = extractFloat64Exp( a );
    aSign = 0;

    if ( aExp ) aSig |= LIT64( 0x0010000000000000 );
    shiftCount = 0x42C - aExp;
    if ( 0 < shiftCount ) shift64RightJamming( aSig, shiftCount, &aSig );
    return roundAndPackInt32( roundData, aSign, aSig );
}
