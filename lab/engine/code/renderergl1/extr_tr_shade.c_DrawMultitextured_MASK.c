#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * bundle; int /*<<< orphan*/  stateBits; } ;
typedef  TYPE_4__ shaderStage_t ;
struct TYPE_12__ {int /*<<< orphan*/ * texcoords; } ;
struct TYPE_14__ {int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; TYPE_3__ svars; } ;
typedef  TYPE_5__ shaderCommands_t ;
struct TYPE_10__ {scalar_t__ isPortal; } ;
struct TYPE_17__ {TYPE_1__ viewParms; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {TYPE_2__* shader; TYPE_4__** xstages; } ;
struct TYPE_11__ {int /*<<< orphan*/  multitextureEnv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ backEnd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* r_lightmap ; 
 TYPE_6__ tess ; 

__attribute__((used)) static void FUNC10( shaderCommands_t *input, int stage ) {
	shaderStage_t	*pStage;

	pStage = tess.xstages[stage];

	FUNC1( pStage->stateBits );

	// this is an ugly hack to work around a GeForce driver
	// bug with multitexture and clip planes
	if ( backEnd.viewParms.isPortal ) {
		FUNC8( GL_FRONT_AND_BACK, GL_FILL );
	}

	//
	// base
	//
	FUNC0( 0 );
	FUNC9( 2, GL_FLOAT, 0, input->svars.texcoords[0] );
	FUNC3( &pStage->bundle[0] );

	//
	// lightmap/secondary pass
	//
	FUNC0( 1 );
	FUNC6( GL_TEXTURE_2D );
	FUNC7( GL_TEXTURE_COORD_ARRAY );

	if ( r_lightmap->integer ) {
		FUNC2( GL_REPLACE );
	} else {
		FUNC2( tess.shader->multitextureEnv );
	}

	FUNC9( 2, GL_FLOAT, 0, input->svars.texcoords[1] );

	FUNC3( &pStage->bundle[1] );

	FUNC4( input->numIndexes, input->indexes );

	//
	// disable texturing on TEXTURE1, then select TEXTURE0
	//
	//qglDisableClientState( GL_TEXTURE_COORD_ARRAY );
	FUNC5( GL_TEXTURE_2D );

	FUNC0( 0 );
}