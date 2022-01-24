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
typedef  int /*<<< orphan*/  fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs_searchpaths ; 

void FUNC5( const char *qpath, const void *buffer, int size ) {
	fileHandle_t f;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !qpath || !buffer ) {
		FUNC0( ERR_FATAL, "FS_WriteFile: NULL parameter" );
	}

	f = FUNC3( qpath );
	if ( !f ) {
		FUNC1( "Failed to open %s\n", qpath );
		return;
	}

	FUNC4( buffer, size, f );

	FUNC2( f );
}