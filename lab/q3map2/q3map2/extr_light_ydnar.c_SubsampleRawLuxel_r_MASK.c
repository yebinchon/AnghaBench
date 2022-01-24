#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  float* vec3_t ;
struct TYPE_4__ {int cluster; float* origin; float* normal; float* color; } ;
typedef  TYPE_1__ trace_t ;
typedef  int /*<<< orphan*/  rawLightmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,float,float,int*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 float lightSamples ; 

__attribute__((used)) static void FUNC5( rawLightmap_t *lm, trace_t *trace, vec3_t sampleOrigin, int x, int y, float bias, float *lightLuxel ){
	int b, samples, mapped, lighted;
	int cluster[ 4 ];
	vec4_t luxel[ 4 ];
	vec3_t origin[ 4 ], normal[ 4 ];
	float biasDirs[ 4 ][ 2 ] = { { -1.0f, -1.0f }, { 1.0f, -1.0f }, { -1.0f, 1.0f }, { 1.0f, 1.0f } };
	vec3_t color, total;


	/* limit check */
	if ( lightLuxel[ 3 ] >= lightSamples ) {
		return;
	}

	/* setup */
	FUNC3( total );
	mapped = 0;
	lighted = 0;

	/* make 2x2 subsample stamp */
	for ( b = 0; b < 4; b++ )
	{
		/* set origin */
		FUNC4( sampleOrigin, origin[ b ] );

		/* calculate position */
		if ( !FUNC1( lm, x, y, ( bias * biasDirs[ b ][ 0 ] ), ( bias * biasDirs[ b ][ 1 ] ), &cluster[ b ], origin[ b ], normal[ b ] ) ) {
			cluster[ b ] = -1;
			continue;
		}
		mapped++;

		/* increment sample count */
		luxel[ b ][ 3 ] = lightLuxel[ 3 ] + 1.0f;

		/* setup trace */
		trace->cluster = *cluster;
		FUNC4( origin[ b ], trace->origin );
		FUNC4( normal[ b ], trace->normal );

		/* sample light */

		FUNC0( trace );

		/* add to totals (fixme: make contrast function) */
		FUNC4( trace->color, luxel[ b ] );
		FUNC2( total, trace->color, total );
		if ( ( luxel[ b ][ 0 ] + luxel[ b ][ 1 ] + luxel[ b ][ 2 ] ) > 0.0f ) {
			lighted++;
		}
	}

	/* subsample further? */
	if ( ( lightLuxel[ 3 ] + 1.0f ) < lightSamples &&
		 ( total[ 0 ] > 4.0f || total[ 1 ] > 4.0f || total[ 2 ] > 4.0f ) &&
		 lighted != 0 && lighted != mapped ) {
		for ( b = 0; b < 4; b++ )
		{
			if ( cluster[ b ] < 0 ) {
				continue;
			}
			FUNC5( lm, trace, origin[ b ], x, y, ( bias * 0.25f ), luxel[ b ] );
		}
	}

	/* average */
	//%	VectorClear( color );
	//%	samples = 0;
	FUNC4( lightLuxel, color );
	samples = 1;
	for ( b = 0; b < 4; b++ )
	{
		if ( cluster[ b ] < 0 ) {
			continue;
		}
		FUNC2( color, luxel[ b ], color );
		samples++;
	}

	/* add to luxel */
	if ( samples > 0 ) {
		/* average */
		color[ 0 ] /= samples;
		color[ 1 ] /= samples;
		color[ 2 ] /= samples;

		/* add to color */
		FUNC4( color, lightLuxel );
		lightLuxel[ 3 ] += 1.0f;
	}
}