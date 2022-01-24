#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_6__ {float* normal; int numLights; float* color; TYPE_1__* light; TYPE_1__** lights; } ;
typedef  TYPE_2__ trace_t ;
typedef  scalar_t__ byte ;
struct TYPE_5__ {scalar_t__ style; int flags; } ;

/* Variables and functions */
 int LIGHT_NEGATIVE ; 
 scalar_t__ LS_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int MAX_LIGHTMAPS ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float,float*) ; 
 int /*<<< orphan*/  ambientColor ; 
 int /*<<< orphan*/  bouncing ; 
 scalar_t__ cheap ; 
 scalar_t__ normalmap ; 

void FUNC5( trace_t *trace, byte styles[ MAX_LIGHTMAPS ], vec3_t colors[ MAX_LIGHTMAPS ] ){
	int i, lightmapNum;


	/* clear colors */
	for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
		FUNC2( colors[ lightmapNum ] );

	/* ydnar: normalmap */
	if ( normalmap ) {
		colors[ 0 ][ 0 ] = ( trace->normal[ 0 ] + 1.0f ) * 127.5f;
		colors[ 0 ][ 1 ] = ( trace->normal[ 1 ] + 1.0f ) * 127.5f;
		colors[ 0 ][ 2 ] = ( trace->normal[ 2 ] + 1.0f ) * 127.5f;
		return;
	}

	/* ydnar: don't bounce ambient all the time */
	if ( !bouncing ) {
		FUNC3( ambientColor, colors[ 0 ] );
	}

	/* ydnar: trace to all the list of lights pre-stored in tw */
	for ( i = 0; i < trace->numLights && trace->lights[ i ] != NULL; i++ )
	{
		/* set light */
		trace->light = trace->lights[ i ];

		/* style check */
		for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
		{
			if ( styles[ lightmapNum ] == trace->light->style ||
				 styles[ lightmapNum ] == LS_NONE ) {
				break;
			}
		}

		/* max of MAX_LIGHTMAPS (4) styles allowed to hit a sample */
		if ( lightmapNum >= MAX_LIGHTMAPS ) {
			continue;
		}

		/* sample light */
		FUNC0( trace );
		if ( trace->color[ 0 ] == 0.0f && trace->color[ 1 ] == 0.0f && trace->color[ 2 ] == 0.0f ) {
			continue;
		}

		/* handle negative light */
		if ( trace->light->flags & LIGHT_NEGATIVE ) {
			FUNC4( trace->color, -1.0f, trace->color );
		}

		/* set style */
		styles[ lightmapNum ] = trace->light->style;

		/* add it */
		FUNC1( colors[ lightmapNum ], trace->color, colors[ lightmapNum ] );

		/* cheap mode */
		if ( cheap &&
			 colors[ 0 ][ 0 ] >= 255.0f &&
			 colors[ 0 ][ 1 ] >= 255.0f &&
			 colors[ 0 ][ 2 ] >= 255.0f ) {
			break;
		}
	}
}