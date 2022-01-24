#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoVec3_t ;
typedef  int /*<<< orphan*/  picoVec2_t ;
struct TYPE_21__ {TYPE_2__* shader; } ;
typedef  TYPE_1__ picoSurface_t ;
struct TYPE_22__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ picoShader_t ;
struct TYPE_23__ {int numSurfaces; TYPE_1__** surface; } ;
typedef  TYPE_3__ picoModel_t ;
typedef  int /*<<< orphan*/  picoIndex_t ;
typedef  int /*<<< orphan*/  picoColor_t ;

/* Variables and functions */
 int /*<<< orphan*/  PICO_ERROR ; 
 int /*<<< orphan*/  PICO_TRIANGLES ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

void FUNC14( picoModel_t *model, picoVec3_t** xyz, picoVec3_t** normals,
							 int numSTs, picoVec2_t **st, int numColors, picoColor_t **colors,
							 picoShader_t* shader, picoIndex_t* smoothingGroup ){
	int i, j;
	int vertDataIndex;
	picoSurface_t* workSurface = NULL;

	/* see if a surface already has the shader */
	for ( i = 0 ; i < model->numSurfaces ; i++ )
	{
		workSurface = model->surface[i];
		if ( workSurface->shader == shader ) {
			break;
		}
	}

	/* no surface uses this shader yet, so create a new surface */
	if ( !workSurface || i >= model->numSurfaces ) {
		/* create a new surface in the model for the unique shader */
		workSurface = FUNC3( model );
		if ( !workSurface ) {
			FUNC13( PICO_ERROR, "Could not allocate a new surface!\n" );
			return;
		}

		/* do surface setup */
		FUNC11( workSurface, PICO_TRIANGLES );
		FUNC6( workSurface, shader->name );
		FUNC9( workSurface, shader );
	}

	/* add the triangle data to the surface */
	for ( i = 0 ; i < 3 ; i++ )
	{
		/* get the next free spot in the index array */
		int newVertIndex = FUNC1( workSurface );

		/* get the index of the vertex that we're going to store at newVertIndex */
		vertDataIndex = FUNC0( workSurface, *xyz[i], *normals[i], numSTs, st[i], numColors, colors[i], smoothingGroup[i] );

		/* the vertex wasn't found, so create a new vertex in the pool from the data we have */
		if ( vertDataIndex == -1 ) {
			/* find the next spot for a new vertex */
			vertDataIndex = FUNC2( workSurface );

			/* assign the data to it */
			FUNC12( workSurface,vertDataIndex, *xyz[i] );
			FUNC7( workSurface, vertDataIndex, *normals[i] );

			/* make sure to copy over all available ST's and colors for the vertex */
			for ( j = 0 ; j < numColors ; j++ )
			{
				FUNC4( workSurface, j, vertDataIndex, colors[i][j] );
			}
			for ( j = 0 ; j < numSTs ; j++ )
			{
				FUNC8( workSurface, j, vertDataIndex, st[i][j] );
			}

			FUNC10( workSurface, vertDataIndex, smoothingGroup[ i ] );
		}

		/* add this vertex to the triangle */
		FUNC5( workSurface, newVertIndex, vertDataIndex );
	}
}