
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int exception; } ;
typedef scalar_t__ sbits64 ;
typedef int int16 ;
typedef int float64 ;
typedef scalar_t__ flag ;
typedef int bits64 ;


 int LIT64 (int) ;
 int add128 (int,int,int,int,int*,int*) ;
 int estimateDiv128To64 (int,int ,int) ;
 int estimateSqrt32 (int,int) ;
 int extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 scalar_t__ extractFloat64Sign (int ) ;
 int float64_default_nan ;
 int float_flag_invalid ;
 int mul64To128 (int,int,int*,int*) ;
 int normalizeFloat64Subnormal (int,int*,int*) ;
 int propagateFloat64NaN (int ,int ) ;
 int roundAndPackFloat64 (struct roundingData*,int ,int,int) ;
 int shift64RightJamming (int,int,int*) ;
 int shortShift128Left (int ,int,int,int*,int*) ;
 int sub128 (int,int ,int,int,int*,int*) ;

float64 float64_sqrt( struct roundingData *roundData, float64 a )
{
    flag aSign;
    int16 aExp, zExp;
    bits64 aSig, zSig;
    bits64 rem0, rem1, term0, term1;


    aSig = extractFloat64Frac( a );
    aExp = extractFloat64Exp( a );
    aSign = extractFloat64Sign( a );
    if ( aExp == 0x7FF ) {
        if ( aSig ) return propagateFloat64NaN( a, a );
        if ( ! aSign ) return a;
        roundData->exception |= float_flag_invalid;
        return float64_default_nan;
    }
    if ( aSign ) {
        if ( ( aExp | aSig ) == 0 ) return a;
        roundData->exception |= float_flag_invalid;
        return float64_default_nan;
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return 0;
        normalizeFloat64Subnormal( aSig, &aExp, &aSig );
    }
    zExp = ( ( aExp - 0x3FF )>>1 ) + 0x3FE;
    aSig |= LIT64( 0x0010000000000000 );
    zSig = estimateSqrt32( aExp, aSig>>21 );
    zSig <<= 31;
    aSig <<= 9 - ( aExp & 1 );
    zSig = estimateDiv128To64( aSig, 0, zSig ) + zSig + 2;
    if ( ( zSig & 0x3FF ) <= 5 ) {
        if ( zSig < 2 ) {
            zSig = LIT64( 0xFFFFFFFFFFFFFFFF );
        }
        else {
            aSig <<= 2;
            mul64To128( zSig, zSig, &term0, &term1 );
            sub128( aSig, 0, term0, term1, &rem0, &rem1 );
            while ( (sbits64) rem0 < 0 ) {
                --zSig;
                shortShift128Left( 0, zSig, 1, &term0, &term1 );
                term1 |= 1;
                add128( rem0, rem1, term0, term1, &rem0, &rem1 );
            }
            zSig |= ( ( rem0 | rem1 ) != 0 );
        }
    }
    shift64RightJamming( zSig, 1, &zSig );
    return roundAndPackFloat64( roundData, 0, zExp, zSig );

}
