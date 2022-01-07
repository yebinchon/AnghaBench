
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int int32 ;
typedef int int16 ;
typedef int float32 ;
typedef scalar_t__ flag ;
typedef int bits64 ;
typedef int bits32 ;


 int extractFloat32Exp (int ) ;
 int extractFloat32Frac (int ) ;
 scalar_t__ extractFloat32Sign (int ) ;
 int roundAndPackInt32 (struct roundingData*,scalar_t__,int) ;
 int shift64RightJamming (int,int,int*) ;

int32 float32_to_int32( struct roundingData *roundData, float32 a )
{
    flag aSign;
    int16 aExp, shiftCount;
    bits32 aSig;
    bits64 zSig;

    aSig = extractFloat32Frac( a );
    aExp = extractFloat32Exp( a );
    aSign = extractFloat32Sign( a );
    if ( ( aExp == 0x7FF ) && aSig ) aSign = 0;
    if ( aExp ) aSig |= 0x00800000;
    shiftCount = 0xAF - aExp;
    zSig = aSig;
    zSig <<= 32;
    if ( 0 < shiftCount ) shift64RightJamming( zSig, shiftCount, &zSig );
    return roundAndPackInt32( roundData, aSign, zSig );

}
