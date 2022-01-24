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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,float) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int s_smallZoneTotal ; 
 int /*<<< orphan*/  smallzone ; 

void FUNC3( void ) {
	s_smallZoneTotal = 512 * 1024;
	smallzone = FUNC2( s_smallZoneTotal, 1 );
	if ( !smallzone ) {
		FUNC0( ERR_FATAL, "Small zone data failed to allocate %1.1f megs", (float)s_smallZoneTotal / (1024*1024) );
	}
	FUNC1( smallzone, s_smallZoneTotal );
}