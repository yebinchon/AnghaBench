#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_6__* bundle; int /*<<< orphan*/  stateBits; } ;
typedef  TYPE_2__ shaderStage_t ;
struct TYPE_11__ {int /*<<< orphan*/ * texcoords; int /*<<< orphan*/  colors; } ;
struct TYPE_13__ {int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; TYPE_1__ svars; } ;
typedef  TYPE_3__ shaderCommands_t ;
struct TYPE_16__ {scalar_t__* image; scalar_t__ isLightmap; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {TYPE_2__** xstages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int MAX_SHADER_STAGES ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* r_lightmap ; 
 int /*<<< orphan*/  setArraysOnce ; 
 TYPE_4__ tess ; 

__attribute__((used)) static void FUNC9( shaderCommands_t *input )
{
	int stage;

	for ( stage = 0; stage < MAX_SHADER_STAGES; stage++ )
	{
		shaderStage_t *pStage = tess.xstages[stage];

		if ( !pStage )
		{
			break;
		}

		FUNC0( pStage );
		FUNC1( pStage );

		if ( !setArraysOnce )
		{
			FUNC7( GL_COLOR_ARRAY );
			FUNC6( 4, GL_UNSIGNED_BYTE, 0, input->svars.colors );
		}

		//
		// do multitexture
		//
		if ( pStage->bundle[1].image[0] != 0 )
		{
			FUNC2( input, stage );
		}
		else
		{
			if ( !setArraysOnce )
			{
				FUNC8( 2, GL_FLOAT, 0, input->svars.texcoords[0] );
			}

			//
			// set state
			//
			FUNC4( &pStage->bundle[0] );

			FUNC3( pStage->stateBits );

			//
			// draw
			//
			FUNC5( input->numIndexes, input->indexes );
		}
		// allow skipping out to show just lightmaps during development
		if ( r_lightmap->integer && ( pStage->bundle[0].isLightmap || pStage->bundle[1].isLightmap ) )
		{
			break;
		}
	}
}