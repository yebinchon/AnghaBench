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
 int MAX_BASE_PATHS ; 
 int MAX_OS_PATH ; 
 int /*<<< orphan*/ * basePaths ; 
 char* homePath ; 
 int /*<<< orphan*/  numBasePaths ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

void FUNC5( char *path ){
	#ifdef Q_UNIX
	int i;
	char temp[ MAX_OS_PATH ];


	/* dummy check */
	if ( path == NULL || path[ 0 ] == '\0' ) {
		return;
	}

	/* make a hole */
	for ( i = 0; i < ( MAX_BASE_PATHS - 1 ); i++ )
		basePaths[ i + 1 ] = basePaths[ i ];

	/* concatenate home dir and path */
	sprintf( temp, "%s/%s", homePath, path );

	/* add it to the list */
	basePaths[ 0 ] = safe_malloc( strlen( temp ) + 1 );
	strcpy( basePaths[ 0 ], temp );
	CleanPath( basePaths[ 0 ] );
	numBasePaths++;
	#endif
}