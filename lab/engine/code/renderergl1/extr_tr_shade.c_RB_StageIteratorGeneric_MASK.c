#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ sort; int surfaceFlags; scalar_t__ polygonOffset; scalar_t__ fogPass; scalar_t__ multitextureEnv; int /*<<< orphan*/  cullType; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ shader_t ;
struct TYPE_9__ {int /*<<< orphan*/ * texcoords; int /*<<< orphan*/  colors; } ;
struct TYPE_11__ {int numPasses; TYPE_2__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int /*<<< orphan*/  numVertexes; int /*<<< orphan*/  xyz; TYPE_1__ svars; } ;
typedef  TYPE_3__ shaderCommands_t ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_POLYGON_OFFSET_FILL ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ SS_OPAQUE ; 
 int SURF_NODLIGHT ; 
 int SURF_SKY ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_7__* r_logFile ; 
 TYPE_6__* r_offsetFactor ; 
 TYPE_5__* r_offsetUnits ; 
 int /*<<< orphan*/  setArraysOnce ; 
 TYPE_3__ tess ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ) ; 

void FUNC17( void )
{
	shaderCommands_t *input;
	shader_t		*shader;

	input = &tess;
	shader = input->shader;

	FUNC3();

	//
	// log this call
	//
	if ( r_logFile->integer ) 
	{
		// don't just call LogComment, or we will get
		// a call to va() every frame!
		FUNC1( FUNC16("--- RB_StageIteratorGeneric( %s ) ---\n", tess.shader->name) );
	}

	//
	// set face culling appropriately
	//
	FUNC0( shader->cullType );

	// set polygon offset if necessary
	if ( shader->polygonOffset )
	{
		FUNC9( GL_POLYGON_OFFSET_FILL );
		FUNC12( r_offsetFactor->value, r_offsetUnits->value );
	}

	//
	// if there is only a single pass then we can enable color
	// and texture arrays before we compile, otherwise we need
	// to avoid compiling those arrays since they will change
	// during multipass rendering
	//
	if ( tess.numPasses > 1 || shader->multitextureEnv )
	{
		setArraysOnce = qfalse;
		FUNC8 (GL_COLOR_ARRAY);
		FUNC8 (GL_TEXTURE_COORD_ARRAY);
	}
	else
	{
		setArraysOnce = qtrue;

		FUNC10( GL_COLOR_ARRAY);
		FUNC6( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );

		FUNC10( GL_TEXTURE_COORD_ARRAY);
		FUNC13( 2, GL_FLOAT, 0, tess.svars.texcoords[0] );
	}

	//
	// lock XYZ
	//
	FUNC15 (3, GL_FLOAT, 16, input->xyz);	// padded for SIMD
	if (&qglLockArraysEXT)
	{
		FUNC11(0, input->numVertexes);
		FUNC1( "glLockArraysEXT\n" );
	}

	//
	// enable color and texcoord arrays after the lock if necessary
	//
	if ( !setArraysOnce )
	{
		FUNC10( GL_TEXTURE_COORD_ARRAY );
		FUNC10( GL_COLOR_ARRAY );
	}

	//
	// call shader function
	//
	FUNC5( input );

	// 
	// now do any dynamic lighting needed
	//
	if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE
		&& !(tess.shader->surfaceFlags & (SURF_NODLIGHT | SURF_SKY) ) ) {
		FUNC2();
	}

	//
	// now do fog
	//
	if ( tess.fogNum && tess.shader->fogPass ) {
		FUNC4();
	}

	// 
	// unlock arrays
	//
	if (&qglUnlockArraysEXT) 
	{
		FUNC14();
		FUNC1( "glUnlockArraysEXT\n" );
	}

	//
	// reset polygon offset
	//
	if ( shader->polygonOffset )
	{
		FUNC7( GL_POLYGON_OFFSET_FILL );
	}
}