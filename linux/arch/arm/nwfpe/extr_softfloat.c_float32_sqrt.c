
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int exception; } ;
typedef scalar_t__ sbits64 ;
typedef int int16 ;
typedef int float32 ;
typedef scalar_t__ flag ;
typedef int bits64 ;
typedef int bits32 ;


 int estimateSqrt32 (int,int) ;
 int extractFloat32Exp (int ) ;
 int extractFloat32Frac (int ) ;
 scalar_t__ extractFloat32Sign (int ) ;
 int float32_default_nan ;
 int float_flag_invalid ;
 int normalizeFloat32Subnormal (int,int*,int*) ;
 int propagateFloat32NaN (int ,int ) ;
 int roundAndPackFloat32 (struct roundingData*,int ,int,int) ;
 int shift32RightJamming (int,int,int*) ;

float32 float32_sqrt( struct roundingData *roundData, float32 a )
{
    flag aSign;
    int16 aExp, zExp;
    bits32 aSig, zSig;
    bits64 rem, term;

    aSig = extractFloat32Frac( a );
    aExp = extractFloat32Exp( a );
    aSign = extractFloat32Sign( a );
    if ( aExp == 0xFF ) {
        if ( aSig ) return propagateFloat32NaN( a, 0 );
        if ( ! aSign ) return a;
        roundData->exception |= float_flag_invalid;
        return float32_default_nan;
    }
    if ( aSign ) {
        if ( ( aExp | aSig ) == 0 ) return a;
        roundData->exception |= float_flag_invalid;
        return float32_default_nan;
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return 0;
        normalizeFloat32Subnormal( aSig, &aExp, &aSig );
    }
    zExp = ( ( aExp - 0x7F )>>1 ) + 0x7E;
    aSig = ( aSig | 0x00800000 )<<8;
    zSig = estimateSqrt32( aExp, aSig ) + 2;
    if ( ( zSig & 0x7F ) <= 5 ) {
        if ( zSig < 2 ) {
            zSig = 0xFFFFFFFF;
        }
        else {
            aSig >>= aExp & 1;
            term = ( (bits64) zSig ) * zSig;
            rem = ( ( (bits64) aSig )<<32 ) - term;
            while ( (sbits64) rem < 0 ) {
                --zSig;
                rem += ( ( (bits64) zSig )<<1 ) | 1;
            }
            zSig |= ( rem != 0 );
        }
    }
    shift32RightJamming( zSig, 1, &zSig );
    return roundAndPackFloat32( roundData, 0, zExp, zSig );

}
