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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ sort; scalar_t__ fogPass; int /*<<< orphan*/  cullType; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ shader_t ;
struct TYPE_7__ {scalar_t__ colors; } ;
struct TYPE_10__ {TYPE_3__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; TYPE_2__** xstages; int /*<<< orphan*/  numVertexes; int /*<<< orphan*/  xyz; int /*<<< orphan*/ ** texCoords; TYPE_1__ svars; } ;
typedef  TYPE_4__ shaderCommands_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  stateBits; int /*<<< orphan*/ * bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SS_OPAQUE ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* r_logFile ; 
 TYPE_4__ tess ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ) ; 

void FUNC15( void )
{
	shaderCommands_t *input;
	shader_t		*shader;

	input = &tess;
	shader = input->shader;

	//
	// compute colors
	//
	FUNC4( ( unsigned char * ) tess.svars.colors );

	//
	// log this call
	//
	if ( r_logFile->integer ) 
	{
		// don't just call LogComment, or we will get
		// a call to va() every frame!
		FUNC2( FUNC14("--- RB_StageIteratorVertexLitTexturedUnfogged( %s ) ---\n", tess.shader->name) );
	}

	//
	// set face culling appropriately
	//
	FUNC0( shader->cullType );

	//
	// set arrays and lock
	//
	FUNC9( GL_COLOR_ARRAY);
	FUNC9( GL_TEXTURE_COORD_ARRAY);

	FUNC8( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );
	FUNC11( 2, GL_FLOAT, 16, tess.texCoords[0][0] );
	FUNC13 (3, GL_FLOAT, 16, input->xyz);

	if ( &qglLockArraysEXT )
	{
		FUNC10(0, input->numVertexes);
		FUNC2( "glLockArraysEXT\n" );
	}

	//
	// call special shade routine
	//
	FUNC6( &tess.xstages[0]->bundle[0] );
	FUNC1( tess.xstages[0]->stateBits );
	FUNC7( input->numIndexes, input->indexes );

	// 
	// now do any dynamic lighting needed
	//
	if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE ) {
		FUNC3();
	}

	//
	// now do fog
	//
	if ( tess.fogNum && tess.shader->fogPass ) {
		FUNC5();
	}

	// 
	// unlock arrays
	//
	if (&qglUnlockArraysEXT) 
	{
		FUNC12();
		FUNC2( "glUnlockArraysEXT\n" );
	}
}