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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ fs_loadStack ; 
 int /*<<< orphan*/  fs_searchpaths ; 

void FUNC3( void *buffer ) {
	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization" );
	}
	if ( !buffer ) {
		FUNC0( ERR_FATAL, "FS_FreeFile( NULL )" );
	}
	fs_loadStack--;

	FUNC2( buffer );

	// if all of our temp files are free, clear all of our space
	if ( fs_loadStack == 0 ) {
		FUNC1();
	}
}