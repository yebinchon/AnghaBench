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
struct roundingData {int /*<<< orphan*/  exception; } ;
typedef  scalar_t__ sbits64 ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  scalar_t__ flag ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float64_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct roundingData*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int,int*,int*) ; 

float64 FUNC14( struct roundingData *roundData, float64 a )
{
    flag aSign;
    int16 aExp, zExp;
    bits64 aSig, zSig;
    bits64 rem0, rem1, term0, term1; //, shiftedRem;
    //float64 z;

    aSig = FUNC5( a );
    aExp = FUNC4( a );
    aSign = FUNC6( a );
    if ( aExp == 0x7FF ) {
        if ( aSig ) return FUNC9( a, a );
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
        FUNC8( aSig, &aExp, &aSig );
    }
    zExp = ( ( aExp - 0x3FF )>>1 ) + 0x3FE;
    aSig |= FUNC0( 0x0010000000000000 );
    zSig = FUNC3( aExp, aSig>>21 );
    zSig <<= 31;
    aSig <<= 9 - ( aExp & 1 );
    zSig = FUNC2( aSig, 0, zSig ) + zSig + 2;
    if ( ( zSig & 0x3FF ) <= 5 ) {
        if ( zSig < 2 ) {
            zSig = FUNC0( 0xFFFFFFFFFFFFFFFF );
        }
        else {
            aSig <<= 2;
            FUNC7( zSig, zSig, &term0, &term1 );
            FUNC13( aSig, 0, term0, term1, &rem0, &rem1 );
            while ( (sbits64) rem0 < 0 ) {
                --zSig;
                FUNC12( 0, zSig, 1, &term0, &term1 );
                term1 |= 1;
                FUNC1( rem0, rem1, term0, term1, &rem0, &rem1 );
            }
            zSig |= ( ( rem0 | rem1 ) != 0 );
        }
    }
    FUNC11( zSig, 1, &zSig );
    return FUNC10( roundData, 0, zExp, zSig );

}