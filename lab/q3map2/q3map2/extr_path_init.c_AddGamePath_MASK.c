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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t MAX_GAME_PATHS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** gamePaths ; 
 size_t numGamePaths ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

void FUNC6( char *path ){
	int i;

	/* dummy check */
	if ( path == NULL || path[ 0 ] == '\0' || numGamePaths >= MAX_GAME_PATHS ) {
		return;
	}

	/* add it to the list */
	gamePaths[ numGamePaths ] = FUNC2( FUNC5( path ) + 1 );
	FUNC4( gamePaths[ numGamePaths ], path );
	FUNC0( gamePaths[ numGamePaths ] );
	numGamePaths++;

	/* don't add it if it's already there */
	for ( i = 0; i < numGamePaths - 1; i++ )
	{
		if ( FUNC3( gamePaths[i], gamePaths[numGamePaths - 1] ) == 0 ) {
			FUNC1( gamePaths[numGamePaths - 1] );
			gamePaths[numGamePaths - 1] = NULL;
			numGamePaths--;
			break;
		}
	}

}