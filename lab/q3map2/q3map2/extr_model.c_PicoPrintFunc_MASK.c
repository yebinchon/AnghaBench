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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
#define  PICO_ERROR 132 
#define  PICO_FATAL 131 
#define  PICO_NORMAL 130 
#define  PICO_VERBOSE 129 
#define  PICO_WARNING 128 
 int /*<<< orphan*/  SYS_ERR ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

void FUNC3( int level, const char *str ){
	if ( str == NULL ) {
		return;
	}
	switch ( level )
	{
	case PICO_NORMAL:
		FUNC2( "%s\n", str );
		break;

	case PICO_VERBOSE:
		FUNC1( SYS_VRB, "%s\n", str );
		break;

	case PICO_WARNING:
		FUNC1( SYS_WRN, "WARNING: %s\n", str );
		break;

	case PICO_ERROR:
		FUNC1( SYS_ERR, "ERROR: %s\n", str );
		break;

	case PICO_FATAL:
		FUNC0( "ERROR: %s\n", str );
		break;
	}
}