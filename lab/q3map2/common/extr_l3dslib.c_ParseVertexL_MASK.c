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
typedef  int /*<<< orphan*/  tshort ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAXVERTS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int bytesread ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short*,int,int,int /*<<< orphan*/ *) ; 
 unsigned short** fverts ; 
 scalar_t__ trisfound ; 
 int vertsfound ; 

int FUNC4( FILE *input ){
	int i, j, startbytesread, numverts;
	unsigned short tshort;

	if ( vertsfound ) {
		FUNC0( "Error: Multiple vertex chunks" );
	}

	vertsfound = 1;
	startbytesread = bytesread;

	if ( FUNC2( input ) ) {
		FUNC0( "Error: unexpected end of file" );
	}

	FUNC3( &tshort, sizeof( tshort ), 1, input );
	bytesread += sizeof( tshort );
	numverts = (int)tshort;

	if ( numverts > MAXVERTS ) {
		FUNC0( "Error: Too many vertices" );
	}

	for ( i = 0 ; i < numverts ; i++ )
	{
		for ( j = 0 ; j < 3 ; j++ )
		{
			if ( FUNC2( input ) ) {
				FUNC0( "Error: unexpected end of file" );
			}

			FUNC3( &fverts[i][j], sizeof( float ), 1, input );
			bytesread += sizeof( float );
		}
	}

	if ( vertsfound && trisfound ) {
		FUNC1();
	}

	return bytesread - startbytesread;
}