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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  DT_ERROR ; 
 char* FUNC3 (char const*,char const*,char const*) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 unsigned int FUNC10 (int,char*,unsigned int) ; 

void FUNC11( const char *error )
{
	char buffer[ 1024 ];
	unsigned int size;
	int f = -1;
	const char *homepath = FUNC2( "fs_homepath" );
	const char *gamedir = FUNC2( "fs_game" );
	const char *fileName = "crashlog.txt";
	char *dirpath = FUNC3( homepath, gamedir, "");
	char *ospath = FUNC3( homepath, gamedir, fileName );

	FUNC6( FUNC9( "%s\n", error ) );

#ifndef DEDICATED
	FUNC4( DT_ERROR, FUNC9( "%s. See \"%s\" for details.", error, ospath ), "Error" );
#endif

	// Make sure the write path for the crashlog exists...

	if(!FUNC5(homepath))
	{
		FUNC1("ERROR: couldn't create path '%s' for crash log.\n", homepath);
		return;
	}

	if(!FUNC5(dirpath))
	{
		FUNC1("ERROR: couldn't create path '%s' for crash log.\n", dirpath);
		return;
	}

	// We might be crashing because we maxed out the Quake MAX_FILE_HANDLES,
	// which will come through here, so we don't want to recurse forever by
	// calling FS_FOpenFileWrite()...use the Unix system APIs instead.
	f = FUNC8( ospath, O_CREAT | O_TRUNC | O_WRONLY, 0640 );
	if( f == -1 )
	{
		FUNC1( "ERROR: couldn't open %s\n", fileName );
		return;
	}

	// We're crashing, so we don't care much if write() or close() fails.
	while( ( size = FUNC0( buffer, sizeof( buffer ) ) ) > 0 ) {
		if( FUNC10( f, buffer, size ) != size ) {
			FUNC1( "ERROR: couldn't fully write to %s\n", fileName );
			break;
		}
	}

	FUNC7( f );
}