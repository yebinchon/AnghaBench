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
struct roundingData {int dummy; } ;
typedef  int /*<<< orphan*/  float64 ;
typedef  scalar_t__ flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roundingData*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct roundingData*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

float64 FUNC3( struct roundingData *roundData, float64 a, float64 b )
{
    flag aSign, bSign;

    aSign = FUNC1( a );
    bSign = FUNC1( b );
    if ( aSign == bSign ) {
        return FUNC0( roundData, a, b, aSign );
    }
    else {
        return FUNC2( roundData, a, b, aSign );
    }

}