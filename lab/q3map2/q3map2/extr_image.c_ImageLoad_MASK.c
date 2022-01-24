#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int refCount; char* name; scalar_t__ width; scalar_t__ height; char* filename; int /*<<< orphan*/ * pixels; } ;
typedef  TYPE_1__ image_t ;
typedef  int /*<<< orphan*/  ddsPF_t ;
typedef  int /*<<< orphan*/  ddsBuffer_t ;
typedef  char byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*) ; 
 int MAX_IMAGES ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_1__* images ; 
 int /*<<< orphan*/  numImages ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 scalar_t__ FUNC16 (char*) ; 
 int FUNC17 (char const*,void**,int /*<<< orphan*/ ) ; 

image_t *FUNC18( const char *filename ){
	int i;
	image_t     *image;
	char name[ 1024 ];
	int size;
	byte        *buffer = NULL;


	/* init */
	FUNC3();

	/* dummy check */
	if ( filename == NULL || filename[ 0 ] == '\0' ) {
		return NULL;
	}

	/* strip file extension off name */
	FUNC15( name, filename );
	FUNC8( name );

	/* try to find existing image */
	image = FUNC2( name );
	if ( image != NULL ) {
		image->refCount++;
		return image;
	}

	/* none found, so find first non-null image */
	image = NULL;
	for ( i = 0; i < MAX_IMAGES; i++ )
	{
		if ( images[ i ].name == NULL ) {
			image = &images[ i ];
			break;
		}
	}

	/* too many images? */
	if ( image == NULL ) {
		FUNC1( "MAX_IMAGES (%d) exceeded, there are too many image files referenced by the map.", MAX_IMAGES );
	}

	/* set it up */
	image->name = FUNC13( FUNC16( name ) + 1 );
	FUNC15( image->name, name );

	/* attempt to load tga */
	FUNC8( name );
	FUNC14( name, ".tga" );
	size = FUNC17( (const char*) name, (void**) &buffer, 0 );
	if ( size > 0 ) {
		FUNC7( buffer, buffer + size, &image->pixels, &image->width, &image->height );
	}
	else
	{
		/* attempt to load png */
		FUNC8( name );
		FUNC14( name, ".png" );
		size = FUNC17( (const char*) name, (void**) &buffer, 0 );
		if ( size > 0 ) {
			FUNC6( buffer, size, &image->pixels, &image->width, &image->height );
		}
		else
		{
			/* attempt to load jpg */
			FUNC8( name );
			FUNC14( name, ".jpg" );
			size = FUNC17( (const char*) name, (void**) &buffer, 0 );
			if ( size > 0 ) {
				if ( FUNC5( buffer, size, &image->pixels, &image->width, &image->height ) == -1 && image->pixels != NULL ) {
					FUNC9( SYS_WRN, "WARNING: LoadJPGBuff: %s\n", (unsigned char*) image->pixels );
				}
			}
			else
			{
				/* attempt to load dds */
				FUNC8( name );
				FUNC14( name, ".dds" );
				size = FUNC17( (const char*) name, (void**) &buffer, 0 );
				if ( size > 0 ) {
					FUNC4( buffer, size, &image->pixels, &image->width, &image->height );

					/* debug code */
					#if 1
					{
						ddsPF_t pf;
						FUNC0( (ddsBuffer_t*) buffer, NULL, NULL, &pf );
						FUNC10( "pf = %d\n", pf );
						if ( image->width > 0 ) {
							FUNC8( name );
							FUNC14( name, "_converted.tga" );
							FUNC11( "C:\\games\\quake3\\baseq3\\textures\\rad\\dds_converted.tga", image->pixels, image->width, image->height );
						}
					}
					#endif
				}
			}
		}
	}

	/* free file buffer */
	FUNC12( buffer );

	/* make sure everything's kosher */
	if ( size <= 0 || image->width <= 0 || image->height <= 0 || image->pixels == NULL ) {
		//%	Sys_Printf( "size = %d  width = %d  height = %d  pixels = 0x%08x (%s)\n",
		//%		size, image->width, image->height, image->pixels, name );
		FUNC12( image->name );
		image->name = NULL;
		return NULL;
	}

	/* set filename */
	image->filename = FUNC13( FUNC16( name ) + 1 );
	FUNC15( image->filename, name );

	/* set count */
	image->refCount = 1;
	numImages++;

	/* return the image */
	return image;
}