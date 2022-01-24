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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ com_fullyInitialized ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static __attribute__ ((noreturn)) void FUNC7( int exitCode )
{
	FUNC0( );

#ifndef DEDICATED
	FUNC3( );
#endif

	if( exitCode < 2 && com_fullyInitialized )
	{
		// Normal exit
		FUNC5( FUNC1() );
	}

	FUNC2( );

	FUNC4( );

	FUNC6( exitCode );
}