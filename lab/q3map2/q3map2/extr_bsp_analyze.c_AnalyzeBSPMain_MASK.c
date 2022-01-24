#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  bspPlane_t ;
typedef  int /*<<< orphan*/  bspNode_t ;
typedef  int /*<<< orphan*/  bspModel_t ;
typedef  int /*<<< orphan*/  bspLeaf_t ;
typedef  int /*<<< orphan*/  bspBrush_t ;
typedef  int /*<<< orphan*/  bspBrushSide_t ;
struct TYPE_5__ {int member_0; int member_1; char* member_2; int radix; int minCount; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ abspLumpTest_t ;
struct TYPE_6__ {char* ident; int version; TYPE_1__* lumps; } ;
typedef  TYPE_3__ abspHeader_t ;
struct TYPE_4__ {int length; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 float FUNC1 (float) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,void**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int FUNC9( int argc, char **argv ){
	abspHeader_t            *header;
	int size, i, version, offset, length, lumpInt, count;
	char ident[ 5 ];
	void                    *lump;
	float lumpFloat;
	char lumpString[ 1024 ], source[ 1024 ];
	qboolean lumpSwap = qfalse;
	abspLumpTest_t          *lumpTest;
	static abspLumpTest_t lumpTests[] =
	{
		{ sizeof( bspPlane_t ),         6,      "IBSP LUMP_PLANES" },
		{ sizeof( bspBrush_t ),         1,      "IBSP LUMP_BRUSHES" },
		{ 8,                            6,      "IBSP LUMP_BRUSHSIDES" },
		{ sizeof( bspBrushSide_t ),     6,      "RBSP LUMP_BRUSHSIDES" },
		{ sizeof( bspModel_t ),         1,      "IBSP LUMP_MODELS" },
		{ sizeof( bspNode_t ),          2,      "IBSP LUMP_NODES" },
		{ sizeof( bspLeaf_t ),          1,      "IBSP LUMP_LEAFS" },
		{ 104,                          3,      "IBSP LUMP_DRAWSURFS" },
		{ 44,                           3,      "IBSP LUMP_DRAWVERTS" },
		{ 4,                            6,      "IBSP LUMP_DRAWINDEXES" },
		{ 128 * 128 * 3,                1,      "IBSP LUMP_LIGHTMAPS" },
		{ 256 * 256 * 3,                1,      "IBSP LUMP_LIGHTMAPS (256 x 256)" },
		{ 512 * 512 * 3,                1,      "IBSP LUMP_LIGHTMAPS (512 x 512)" },
		{ 0, 0, NULL }
	};


	/* arg checking */
	if ( argc < 1 ) {
		FUNC4( "Usage: q3map -analyze [-lumpswap] [-v] <mapname>\n" );
		return 0;
	}

	/* process arguments */
	for ( i = 1; i < ( argc - 1 ); i++ )
	{
		/* -format map|ase|... */
		if ( !FUNC6( argv[ i ],  "-lumpswap" ) ) {
			FUNC4( "Swapped lump structs enabled\n" );
			lumpSwap = qtrue;
		}
	}

	/* clean up map name */
	FUNC7( source, FUNC0( argv[ i ] ) );
	FUNC4( "Loading %s\n", source );

	/* load the file */
	size = FUNC3( source, (void**) &header );
	if ( size == 0 || header == NULL ) {
		FUNC4( "Unable to load %s.\n", source );
		return -1;
	}

	/* analyze ident/version */
	FUNC5( ident, header->ident, 4 );
	ident[ 4 ] = '\0';
	version = FUNC2( header->version );

	FUNC4( "Identity:      %s\n", ident );
	FUNC4( "Version:       %d\n", version );
	FUNC4( "---------------------------------------\n" );

	/* analyze each lump */
	for ( i = 0; i < 100; i++ )
	{
		/* call of duty swapped lump pairs */
		if ( lumpSwap ) {
			offset = FUNC2( header->lumps[ i ].length );
			length = FUNC2( header->lumps[ i ].offset );
		}

		/* standard lump pairs */
		else
		{
			offset = FUNC2( header->lumps[ i ].offset );
			length = FUNC2( header->lumps[ i ].length );
		}

		/* extract data */
		lump = (byte*) header + offset;
		lumpInt = FUNC2( (int) *( (int*) lump ) );
		lumpFloat = FUNC1( (float) *( (float*) lump ) );
		FUNC5( lumpString, (char*) lump, ( length < 1024 ? length : 1024 ) );
		lumpString[ 1023 ] = '\0';

		/* print basic lump info */
		FUNC4( "Lump:          %d\n", i );
		FUNC4( "Offset:        %d bytes\n", offset );
		FUNC4( "Length:        %d bytes\n", length );

		/* only operate on valid lumps */
		if ( length > 0 ) {
			/* print data in 4 formats */
			FUNC4( "As hex:        %08X\n", lumpInt );
			FUNC4( "As int:        %d\n", lumpInt );
			FUNC4( "As float:      %f\n", lumpFloat );
			FUNC4( "As string:     %s\n", lumpString );

			/* guess lump type */
			if ( lumpString[ 0 ] == '{' && lumpString[ 2 ] == '"' ) {
				FUNC4( "Type guess:    IBSP LUMP_ENTITIES\n" );
			}
			else if ( FUNC8( lumpString, "textures/" ) ) {
				FUNC4( "Type guess:    IBSP LUMP_SHADERS\n" );
			}
			else
			{
				/* guess based on size/count */
				for ( lumpTest = lumpTests; lumpTest->radix > 0; lumpTest++ )
				{
					if ( ( length % lumpTest->radix ) != 0 ) {
						continue;
					}
					count = length / lumpTest->radix;
					if ( count < lumpTest->minCount ) {
						continue;
					}
					FUNC4( "Type guess:    %s (%d x %d)\n", lumpTest->name, count, lumpTest->radix );
				}
			}
		}

		FUNC4( "---------------------------------------\n" );

		/* end of file */
		if ( offset + length >= size ) {
			break;
		}
	}

	/* last stats */
	FUNC4( "Lump count:    %d\n", i + 1 );
	FUNC4( "File size:     %d bytes\n", size );

	/* return to caller */
	return 0;
}