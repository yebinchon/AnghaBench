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
typedef  int /*<<< orphan*/  triangle_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 short EDIT3DS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 short MAIN3DS ; 
 int MAXTRIANGLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ bytesread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (short*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ level ; 
 scalar_t__ numtris ; 
 int /*<<< orphan*/ * ptri ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int totaltris ; 
 scalar_t__ trisfound ; 
 scalar_t__ vertsfound ; 

void FUNC9( char *filename, triangle_t **pptri, int *numtriangles ){
	FILE        *input;
	short int tshort;

	bytesread = 0;
	level = 0;
	numtris = 0;
	totaltris = 0;
	vertsfound = 0;
	trisfound = 0;

	if ( ( input = FUNC4( filename, "rb" ) ) == 0 ) {
		FUNC5( stderr,"reader: could not open file '%s'\n", filename );
		FUNC2( 0 );
	}

	FUNC6( &tshort, sizeof( tshort ), 1, input );

// should only be MAIN3DS, but some files seem to start with EDIT3DS, with
// no MAIN3DS
	if ( ( tshort != MAIN3DS ) && ( tshort != EDIT3DS ) ) {
		FUNC5( stderr,"File is not a 3DS file.\n" );
		FUNC2( 0 );
	}

// back to top of file so we can parse the first chunk descriptor
	FUNC7( input, 0, SEEK_SET );

	ptri = FUNC8( MAXTRIANGLES * sizeof( triangle_t ) );

	*pptri = ptri;

// parse through looking for the relevant chunk tree (MAIN3DS | EDIT3DS | EDIT_OBJECT |
// OBJ_TRIMESH | {TRI_VERTEXL, TRI_FACEL1}) and skipping other chunks
	FUNC1( input );

	if ( vertsfound || trisfound ) {
		FUNC0( "Incomplete triangle set" );
	}

	*numtriangles = totaltris;

	FUNC3( input );
}