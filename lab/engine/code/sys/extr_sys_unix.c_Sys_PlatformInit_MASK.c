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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int stdinIsATTY ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

void FUNC4( void )
{
	const char* term = FUNC1( "TERM" );

	FUNC0();

	stdinIsATTY = FUNC2( STDIN_FILENO ) &&
		!( term && ( !FUNC3( term, "raw" ) || !FUNC3( term, "dumb" ) ) );
}