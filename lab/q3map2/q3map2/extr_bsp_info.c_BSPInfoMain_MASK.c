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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  infoMode ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

int FUNC11( int count, char **fileNames ){
	int i;
	char source[ 1024 ], ext[ 64 ];
	int size;
	FILE        *f;


	/* dummy check */
	if ( count < 1 ) {
		FUNC7( "No files to dump info for.\n" );
		return -1;
	}

	/* enable info mode */
	infoMode = qtrue;

	/* walk file list */
	for ( i = 0; i < count; i++ )
	{
		FUNC7( "---------------------------------\n" );

		/* mangle filename and get size */
		FUNC10( source, fileNames[ i ] );
		FUNC1( source, ext );
		if ( !FUNC5( ext, "map" ) ) {
			FUNC6( source );
		}
		FUNC0( source, ".bsp" );
		f = FUNC9( source, "rb" );
		if ( f ) {
			size = FUNC4( f );
			FUNC8( f );
		}
		else{
			size = 0;
		}

		/* load the bsp file and print lump sizes */
		FUNC7( "%s\n", source );
		FUNC2( source );
		FUNC3();

		/* print sizes */
		FUNC7( "\n" );
		FUNC7( "          total         %9d\n", size );
		FUNC7( "                        %9d KB\n", size / 1024 );
		FUNC7( "                        %9d MB\n", size / ( 1024 * 1024 ) );

		FUNC7( "---------------------------------\n" );
	}

	/* return count */
	return i;
}