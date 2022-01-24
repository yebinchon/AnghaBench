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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_INSTALL_PATH ; 
 char PATH_SEP ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

qboolean FUNC7 (char *OSPath) {
	char	*ofs;
	char	path[MAX_INSTALL_PATH];
	
	// make absolutely sure that it can't back up the path
	// FIXME: is c: allowed???
	if ( FUNC6( OSPath, ".." ) || FUNC6( OSPath, "::" ) ) {
		FUNC1( "WARNING: refusing to create relative path \"%s\"\n", OSPath );
		return qtrue;
	}

	FUNC3( path, OSPath, sizeof( path ) );
	FUNC2( path );

	// Skip creation of the root directory as it will always be there
	ofs = FUNC5( path, PATH_SEP );
	if ( ofs != NULL ) {
		ofs++;
	}

	for (; ofs != NULL && *ofs ; ofs++) {
		if (*ofs == PATH_SEP) {
			// create the directory
			*ofs = 0;
			if (!FUNC4 (path)) {
				FUNC0( ERR_FATAL, "FS_CreatePath: failed to create path \"%s\"",
					path );
			}
			*ofs = PATH_SEP;
		}
	}

	return qfalse;
}