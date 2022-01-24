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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 (char const*,void**,int /*<<< orphan*/ ) ; 

void FUNC7( const char *filename, byte **pic, byte **palette, int *width, int *height ){
	byte  *out;
	int i;
	int bfSize;
	int bfOffBits;
	int structSize;
	int bcWidth;
	int bcHeight;
	int bcPlanes;
	int bcBitCount;
	byte bcPalette[1024];
	qboolean flipped;
	byte *in;
	int len, pos = 0;

	len = FUNC6( filename, (void **)&in, 0 );
	if ( len == -1 ) {
		FUNC0( "Couldn't read %s", filename );
	}

	i = FUNC2( in, len, &pos );
	if ( i != 'B' + ( 'M' << 8 ) ) {
		FUNC0( "%s is not a bmp file", filename );
	}

	bfSize = FUNC1( in, len, &pos );
	FUNC2( in, len, &pos );
	FUNC2( in, len, &pos );
	bfOffBits = FUNC1( in, len, &pos );

	// the size will tell us if it is a
	// bitmapinfo or a bitmapcore
	structSize = FUNC1( in, len, &pos );
	if ( structSize == 40 ) {
		// bitmapinfo
		bcWidth = FUNC1( in, len, &pos );
		bcHeight = FUNC1( in, len, &pos );
		bcPlanes = FUNC2( in, len, &pos );
		bcBitCount = FUNC2( in, len, &pos );

		pos += 24;

		if ( palette ) {
			FUNC4( bcPalette, in + pos, 1024 );
			pos += 1024;
			*palette = FUNC5( 768 );

			for ( i = 0 ; i < 256 ; i++ )
			{
				( *palette )[i * 3 + 0] = bcPalette[i * 4 + 2];
				( *palette )[i * 3 + 1] = bcPalette[i * 4 + 1];
				( *palette )[i * 3 + 2] = bcPalette[i * 4 + 0];
			}
		}
	}
	else if ( structSize == 12 ) {
		// bitmapcore
		bcWidth = FUNC2( in, len, &pos );
		bcHeight = FUNC2( in, len, &pos );
		bcPlanes = FUNC2( in, len, &pos );
		bcBitCount = FUNC2( in, len, &pos );

		if ( palette ) {
			FUNC4( bcPalette, in + pos, 768 );
			pos += 768;
			*palette = FUNC5( 768 );

			for ( i = 0 ; i < 256 ; i++ ) {
				( *palette )[i * 3 + 0] = bcPalette[i * 3 + 2];
				( *palette )[i * 3 + 1] = bcPalette[i * 3 + 1];
				( *palette )[i * 3 + 2] = bcPalette[i * 3 + 0];
			}
		}
	}
	else {
		FUNC0( "%s had strange struct size", filename );
		return;
	}

	if ( bcPlanes != 1 ) {
		FUNC0( "%s was not a single plane image", filename );
	}

	if ( bcBitCount != 8 ) {
		FUNC0( "%s was not an 8 bit image", filename );
	}

	if ( bcHeight < 0 ) {
		bcHeight = -bcHeight;
		flipped = qtrue;
	}
	else {
		flipped = qfalse;
	}

	if ( width ) {
		*width = bcWidth;
	}
	if ( height ) {
		*height = bcHeight;
	}

	if ( !pic ) {
		FUNC3( in );
		return;
	}

	out = FUNC5( bcWidth * bcHeight );
	*pic = out;
	pos = bfOffBits;

	if ( flipped ) {
		for ( i = 0 ; i < bcHeight ; i++ ) {
			FUNC4( out + bcWidth * ( bcHeight - 1 - i ), in + pos, bcWidth );
			pos += bcWidth;
		}
	}
	else {
		FUNC4( out, in + pos, bcWidth * bcHeight );
		pos += bcWidth * bcHeight;
	}

	FUNC3( in );
}