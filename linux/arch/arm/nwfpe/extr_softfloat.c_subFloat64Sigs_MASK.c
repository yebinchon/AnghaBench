#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct roundingData {scalar_t__ mode; int /*<<< orphan*/  exception; } ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int flag ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float64_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 scalar_t__ float_round_down ; 
 int /*<<< orphan*/  FUNC3 (struct roundingData*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int*) ; 

__attribute__((used)) static float64 FUNC7( struct roundingData *roundData, float64 a, float64 b, flag zSign )
{
    int16 aExp, bExp, zExp;
    bits64 aSig, bSig, zSig;
    int16 expDiff;

    aSig = FUNC2( a );
    aExp = FUNC1( a );
    bSig = FUNC2( b );
    bExp = FUNC1( b );
    expDiff = aExp - bExp;
    aSig <<= 10;
    bSig <<= 10;
    if ( 0 < expDiff ) goto aExpBigger;
    if ( expDiff < 0 ) goto bExpBigger;
    if ( aExp == 0x7FF ) {
        if ( aSig | bSig ) return FUNC5( a, b );
        roundData->exception |= float_flag_invalid;
        return float64_default_nan;
    }
    if ( aExp == 0 ) {
        aExp = 1;
        bExp = 1;
    }
    if ( bSig < aSig ) goto aBigger;
    if ( aSig < bSig ) goto bBigger;
    return FUNC4( roundData->mode == float_round_down, 0, 0 );
 bExpBigger:
    if ( bExp == 0x7FF ) {
        if ( bSig ) return FUNC5( a, b );
        return FUNC4( zSign ^ 1, 0x7FF, 0 );
    }
    if ( aExp == 0 ) {
        ++expDiff;
    }
    else {
        aSig |= FUNC0( 0x4000000000000000 );
    }
    FUNC6( aSig, - expDiff, &aSig );
    bSig |= FUNC0( 0x4000000000000000 );
 bBigger:
    zSig = bSig - aSig;
    zExp = bExp;
    zSign ^= 1;
    goto normalizeRoundAndPack;
 aExpBigger:
    if ( aExp == 0x7FF ) {
        if ( aSig ) return FUNC5( a, b );
        return a;
    }
    if ( bExp == 0 ) {
        --expDiff;
    }
    else {
        bSig |= FUNC0( 0x4000000000000000 );
    }
    FUNC6( bSig, expDiff, &bSig );
    aSig |= FUNC0( 0x4000000000000000 );
 aBigger:
    zSig = aSig - bSig;
    zExp = aExp;
 normalizeRoundAndPack:
    --zExp;
    return FUNC3( roundData, zSign, zExp, zSig );

}