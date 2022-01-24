#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  new_name ;
typedef  int /*<<< orphan*/  imgType_t ;
typedef  int /*<<< orphan*/  imgFlags_t ;
struct TYPE_10__ {char* imgName; int /*<<< orphan*/  flags; struct TYPE_10__* next; } ;
typedef  TYPE_2__ image_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_12__ {int /*<<< orphan*/  (* Free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  Malloc; int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {scalar_t__ (* modify_rgba_texture ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int) ;int /*<<< orphan*/  (* load_texture ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,int*,int*,int /*<<< orphan*/ ) ;scalar_t__ (* replace_texture_name ) (int /*<<< orphan*/ ,char const*,char*,int) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_3__ DeepmindContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 scalar_t__ GL_RGBA8 ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRINT_DEVELOPER ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 TYPE_2__* FUNC2 (char*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ **,int*,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ **,int*,int*) ; 
 TYPE_3__* FUNC5 () ; 
 long FUNC6 (char const*) ; 
 TYPE_2__** hashTable ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_4__ ri ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

image_t	*FUNC14( const char *name, imgType_t type, imgFlags_t flags )
{
	DeepmindContext	*ctx = FUNC5();
	char new_name[MAX_QPATH];
	char dds_name[MAX_QPATH];
	const char	*file_name = name;
	image_t	*image;
	int		width = 0, height = 0, numMips = 0;
	byte	*pic = NULL;
	long	hash;
	GLenum picFormat;
	qboolean capMaxSize = qtrue;

	if (!name) {
		return NULL;
	}

	hash = FUNC6(name);

	//
	// see if the image is already loaded
	//
	for (image=hashTable[hash]; image; image=image->next) {
		if ( !FUNC7( name, image->imgName ) ) {
			// the white image can be used with any set of parms, but other mismatches are errors
			if ( FUNC7( name, "*white" ) ) {
				if ( image->flags != flags ) {
					ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed flags (%i vs %i)\n", name, image->flags, flags );
				}
			}
			return image;
		}
	}

	if ( ctx->hooks.replace_texture_name( ctx->userdata, name, new_name, sizeof( new_name ) ) ) {
		file_name = new_name;
	}
	//
	// Load the pic from disk or from hooks.
	//
	if ( !ctx->hooks.load_texture( ctx->userdata, file_name, &pic, &width, &height, ri.Malloc ) ) {
		// Attempt to load a DDS version of this requested texture.
		FUNC0( file_name, dds_name, MAX_QPATH );
		FUNC1( dds_name, MAX_QPATH, ".dds" );

		FUNC3( dds_name, &pic, &width, &height, &picFormat, &numMips );

		// If a DDS texture was loaded, but it is any other format than the expected
		// RGBA8, discard it and carry on attempting to load the orginal texture.
		if ( pic != NULL && picFormat != GL_RGBA8 ) {
			ri.Free( pic );
			pic = NULL;
			numMips = 0;
		}

		if ( pic == NULL ) {
			FUNC4( file_name, &pic, &width, &height );
		}
	} else {
		capMaxSize = qfalse;
	}

	if ( pic == NULL ) {
		return NULL;
	}

	// Allow modification of a loaded texture.
	if ( ctx->hooks.modify_rgba_texture( ctx->userdata, name, pic, width, height ) ) {
		numMips = 1;
		capMaxSize = qfalse;
	}

	image = FUNC2( ( char * ) name, pic, width, height, numMips, type, flags, 0, capMaxSize );
	ri.Free( pic );
	return image;
}