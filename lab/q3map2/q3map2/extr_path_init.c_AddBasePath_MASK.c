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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX_BASE_PATHS ; 
 int /*<<< orphan*/ * basePaths ; 
 size_t numBasePaths ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

void FUNC4( char *path ){
	/* dummy check */
	if ( path == NULL || path[ 0 ] == '\0' || numBasePaths >= MAX_BASE_PATHS ) {
		return;
	}

	/* add it to the list */
	basePaths[ numBasePaths ] = FUNC1( FUNC3( path ) + 1 );
	FUNC2( basePaths[ numBasePaths ], path );
	FUNC0( basePaths[ numBasePaths ] );
	numBasePaths++;
}