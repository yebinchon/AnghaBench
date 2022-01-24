#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  png_struct ;
typedef  int /*<<< orphan*/  png_info ;
struct TYPE_2__ {int size; scalar_t__ offset; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ pngBuffer_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  PNGReadData ; 
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int PNG_COLOR_TYPE_RGB ; 
 int /*<<< orphan*/  PNG_FILLER_AFTER ; 
 int /*<<< orphan*/  PNG_INFO_tRNS ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18( byte *buffer, int size, byte **pixels, int *width, int *height ){
	png_struct  *png;
	png_info    *info, *end;
    pngBuffer_t pb;
	int i, bitDepth, colorType, channels;
	png_uint_32 w, h;
	byte        **rowPointers;

	/* dummy check */
	if ( buffer == NULL || size <= 0 || pixels == NULL || width == NULL || height == NULL ) {
		return;
	}

	/* null out */
	*pixels = 0;
	*width = 0;
	*height = 0;

	/* determine if this is a png file */
	if ( FUNC15( buffer, 0, 8 ) != 0 ) {
		FUNC0( SYS_WRN, "WARNING: Invalid PNG file\n" );
		return;
	}

	/* create png structs */
	png = FUNC3( PNG_LIBPNG_VER_STRING, NULL, NULL, NULL );
	if ( png == NULL ) {
		FUNC0( SYS_WRN, "WARNING: Unable to create PNG read struct\n" );
		return;
	}

	info = FUNC2( png );
	if ( info == NULL ) {
		FUNC0( SYS_WRN, "WARNING: Unable to create PNG info struct\n" );
		FUNC4( &png, NULL, NULL );
		return;
	}

	end = FUNC2( png );
	if ( end == NULL ) {
		FUNC0( SYS_WRN, "WARNING: Unable to create PNG end info struct\n" );
		FUNC4( &png, &info, NULL );
		return;
	}

	/* set read callback */
    pb.buffer = buffer;
    pb.size = size;
    pb.offset = 0;
	FUNC13( png, (void*)&pb, PNGReadData );

	/* set error longjmp */
	if ( FUNC17( FUNC8(png) ) ) {
		FUNC0( SYS_WRN, "WARNING: An error occurred reading PNG image\n" );
		FUNC4( &png, &info, &end );
		return;
	}

	/* fixme: add proper i/o stuff here */

	/* read png info */
	FUNC10( png, info );

	/* read image header chunk */
	FUNC5( png, info,
				  &w, &h, &bitDepth, &colorType, NULL, NULL, NULL );

	/* read number of channels */
	channels = FUNC6( png, info );

	/* the following will probably bork on certain types of png images, but hey... */

	/* force indexed/gray/trans chunk to rgb */
	if ( ( colorType == PNG_COLOR_TYPE_PALETTE && bitDepth <= 8 ) ||
		 ( colorType == PNG_COLOR_TYPE_GRAY && bitDepth <= 8 ) ||
		 FUNC7( png, info, PNG_INFO_tRNS ) ) {
		FUNC11( png );
	}

	/* strip 16bpc -> 8bpc */
	if ( bitDepth == 16 ) {
		FUNC14( png );
	}

	/* pad rgb to rgba */
	if ( bitDepth == 8 && colorType == PNG_COLOR_TYPE_RGB ) {
		FUNC12( png, 255, PNG_FILLER_AFTER );
	}

	/* create image pixel buffer */
	*width = w;
	*height = h;
	*pixels = FUNC16( w * h * 4 );

	/* create row pointers */
	rowPointers = FUNC16( h * sizeof( byte* ) );
	for ( i = 0; i < h; i++ )
		rowPointers[ i ] = *pixels + ( i * w * 4 );

	/* read the png */
	FUNC9( png, rowPointers );

	/* clean up */
	FUNC1( rowPointers );
	FUNC4( &png, &info, &end );

}