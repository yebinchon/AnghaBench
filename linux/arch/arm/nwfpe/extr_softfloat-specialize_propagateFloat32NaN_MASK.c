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
typedef  int float32 ;
typedef  int flag ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static float32 FUNC3( float32 a, float32 b )
{
    flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

    aIsNaN = FUNC0( a );
    aIsSignalingNaN = FUNC1( a );
    bIsNaN = FUNC0( b );
    bIsSignalingNaN = FUNC1( b );
    a |= 0x00400000;
    b |= 0x00400000;
    if ( aIsSignalingNaN | bIsSignalingNaN ) FUNC2( float_flag_invalid );
    if ( aIsNaN ) {
        return ( aIsSignalingNaN & bIsNaN ) ? b : a;
    }
    else {
        return b;
    }

}