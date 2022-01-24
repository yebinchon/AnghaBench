#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int data; int xmin; int ymin; int xmax; int ymax; int hres; int vres; int bytes_per_line; int palette_type; int manufacturer; int version; int encoding; int bits_per_pixel; int color_planes; } ;
typedef  TYPE_1__ pcx_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int* FUNC5 (int) ; 
 int FUNC6 (char const*,void**,int /*<<< orphan*/ ) ; 

void FUNC7( const char *filename, byte **pic, byte **palette, int *width, int *height ){
	byte    *raw;
	pcx_t   *pcx;
	int x, y, lsize;
	int len;
	int dataByte, runLength;
	byte    *out, *pix;


	/* load the file */
	len = FUNC6( filename, (void **)&raw, 0 );
	if ( len == -1 ) {
		FUNC1( "LoadPCX: Couldn't read %s", filename );
	}


	/* parse the PCX file */
	pcx = (pcx_t *)raw;
	raw = &pcx->data;

	pcx->xmin = FUNC2( pcx->xmin );
	pcx->ymin = FUNC2( pcx->ymin );
	pcx->xmax = FUNC2( pcx->xmax );
	pcx->ymax = FUNC2( pcx->ymax );
	pcx->hres = FUNC2( pcx->hres );
	pcx->vres = FUNC2( pcx->vres );
	pcx->bytes_per_line = FUNC2( pcx->bytes_per_line );
	pcx->palette_type = FUNC2( pcx->palette_type );

	if ( pcx->manufacturer != 0x0a
		 || pcx->version != 5
		 || pcx->encoding != 1
		 || pcx->bits_per_pixel != 8
		 || pcx->xmax >= 640
		 || pcx->ymax >= 480 ) {
		FUNC1( "Bad pcx file %s", filename );
	}

	if ( palette ) {
		*palette = FUNC5( 768 );
		FUNC4( *palette, (byte *)pcx + len - 768, 768 );
	}

	if ( width ) {
		*width = pcx->xmax + 1;
	}
	if ( height ) {
		*height = pcx->ymax + 1;
	}

	if ( !pic ) {
		return;
	}

	out = FUNC5( ( pcx->ymax + 1 ) * ( pcx->xmax + 1 ) );
	if ( !out ) {
		FUNC1( "LoadPCX: couldn't allocate" );
	}

	*pic = out;
	pix = out;

	/* RR2DO2: pcx fix  */
	lsize = pcx->color_planes * pcx->bytes_per_line;

	/* go scanline by scanline */
	for ( y = 0; y <= pcx->ymax; y++, pix += pcx->xmax + 1 )
	{
		/* do a scanline */
		for ( x = 0; x <= pcx->xmax; )
		{
			/* RR2DO2 */
			FUNC0( raw, dataByte, runLength );
			while ( runLength-- > 0 )
				pix[ x++ ] = dataByte;
		}

		/* RR2DO2: discard any other data */
		while ( x < lsize )
		{
			FUNC0( raw, dataByte, runLength );
			x++;
		}
		while ( runLength-- > 0 )
			x++;
	}

	/* validity check */
	if ( raw - (byte *) pcx > len ) {
		FUNC1( "PCX file %s was malformed", filename );
	}
	FUNC3( pcx );
}