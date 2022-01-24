#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ sort; scalar_t__ fogPass; int /*<<< orphan*/  cullType; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ shader_t ;
struct TYPE_9__ {TYPE_2__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; int /*<<< orphan*/  numVertexes; int /*<<< orphan*/ ** texCoords; TYPE_1__** xstages; int /*<<< orphan*/  constantColor255; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_3__ shaderCommands_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int /*<<< orphan*/ * bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLS_DEFAULT ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FLAT ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_MODULATE ; 
 int /*<<< orphan*/  GL_REPLACE ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SS_OPAQUE ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* r_lightmap ; 
 TYPE_5__* r_logFile ; 
 TYPE_3__ tess ; 
 char* FUNC20 (char*,int /*<<< orphan*/ ) ; 

void FUNC21( void ) {
	shaderCommands_t *input;
	shader_t		*shader;

	input = &tess;
	shader = input->shader;

	//
	// log this call
	//
	if ( r_logFile->integer ) {
		// don't just call LogComment, or we will get
		// a call to va() every frame!
		FUNC4( FUNC20("--- RB_StageIteratorLightmappedMultitexture( %s ) ---\n", tess.shader->name) );
	}

	//
	// set face culling appropriately
	//
	FUNC0( shader->cullType );

	//
	// set color, pointers, and lock
	//
	FUNC2( GLS_DEFAULT );
	FUNC19( 3, GL_FLOAT, 16, input->xyz );

#ifdef REPLACE_MODE
	qglDisableClientState( GL_COLOR_ARRAY );
	qglColor3f( 1, 1, 1 );
	qglShadeModel( GL_FLAT );
#else
	FUNC14( GL_COLOR_ARRAY );
	FUNC10( 4, GL_UNSIGNED_BYTE, 0, tess.constantColor255 );
#endif

	//
	// select base stage
	//
	FUNC1( 0 );

	FUNC14( GL_TEXTURE_COORD_ARRAY );
	FUNC7( &tess.xstages[0]->bundle[0] );
	FUNC17( 2, GL_FLOAT, 16, tess.texCoords[0][0] );

	//
	// configure second stage
	//
	FUNC1( 1 );
	FUNC13( GL_TEXTURE_2D );
	if ( r_lightmap->integer ) {
		FUNC3( GL_REPLACE );
	} else {
		FUNC3( GL_MODULATE );
	}
	FUNC7( &tess.xstages[0]->bundle[1] );
	FUNC14( GL_TEXTURE_COORD_ARRAY );
	FUNC17( 2, GL_FLOAT, 16, tess.texCoords[0][1] );

	//
	// lock arrays
	//
	if ( &qglLockArraysEXT ) {
		FUNC15(0, input->numVertexes);
		FUNC4( "glLockArraysEXT\n" );
	}

	FUNC8( input->numIndexes, input->indexes );

	//
	// disable texturing on TEXTURE1, then select TEXTURE0
	//
	FUNC11( GL_TEXTURE_2D );
	FUNC12( GL_TEXTURE_COORD_ARRAY );

	FUNC1( 0 );
#ifdef REPLACE_MODE
	GL_TexEnv( GL_MODULATE );
	qglShadeModel( GL_SMOOTH );
#endif

	// 
	// now do any dynamic lighting needed
	//
	if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE ) {
		FUNC5();
	}

	//
	// now do fog
	//
	if ( tess.fogNum && tess.shader->fogPass ) {
		FUNC6();
	}

	//
	// unlock arrays
	//
	if ( &qglUnlockArraysEXT ) {
		FUNC18();
		FUNC4( "glUnlockArraysEXT\n" );
	}
}