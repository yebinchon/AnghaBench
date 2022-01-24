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
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int VFS_MAXDIRS ; 
 scalar_t__ g_bUsePak ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int g_numDirs ; 
 char** g_strDirs ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

void FUNC14( const char *path ){
	char filename[PATH_MAX];
	char *dirlist;
	GDir *dir;

	if ( g_numDirs == ( VFS_MAXDIRS - 1 ) ) {
		return;
	}

	FUNC1( "VFS Init: %s\n", path );

	FUNC9( g_strDirs[g_numDirs], path );
	FUNC12( g_strDirs[g_numDirs] );
	FUNC11( g_strDirs[g_numDirs] );
	g_numDirs++;

	if ( g_bUsePak ) {
		dir = FUNC3( path, 0, NULL );

		if ( dir != NULL ) {
			while ( 1 )
			{
				const char* name = FUNC4( dir );
				if ( name == NULL ) {
					break;
				}

				dirlist = FUNC6( name );

				{

					char *ext = FUNC10( dirlist, '.' );

					if ( ext != NULL && ( !FUNC0( ext, ".pk3dir" ) || !FUNC0( ext, ".dpkdir" ) ) ) {
						if ( g_numDirs == VFS_MAXDIRS ) {
							continue;
						}
						FUNC7( g_strDirs[g_numDirs], PATH_MAX, "%s/%s", path, name );
						g_strDirs[g_numDirs][PATH_MAX-1] = '\0';
						FUNC12( g_strDirs[g_numDirs] );
						FUNC11( g_strDirs[g_numDirs] );
						++g_numDirs;
					}

					if ( ext == NULL || ( FUNC0( ext, ".pk3" ) != 0 && FUNC0( ext, ".dpk" ) != 0 ) ) {
						continue;
					}
				}

				FUNC8( filename, "%s/%s", path, dirlist );
				FUNC13( filename );

				FUNC5( dirlist );
			}
			FUNC2( dir );
		}
	}
}