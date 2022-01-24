#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int numpoints; float** p; } ;
typedef  TYPE_2__ winding_t ;
typedef  float* vec3_t ;
struct TYPE_14__ {int numFacets; float** bounds; TYPE_1__* planes; TYPE_4__* facets; } ;
typedef  TYPE_3__ patchCollide_t ;
struct TYPE_15__ {int numBorders; int* borderPlanes; int* borderInward; int surfacePlane; } ;
typedef  TYPE_4__ facet_t ;
struct TYPE_16__ {int integer; scalar_t__ value; } ;
typedef  TYPE_5__ cvar_t ;
struct TYPE_12__ {int /*<<< orphan*/  plane; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (float*,float) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (int,int,float*),int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,float*,float,float) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_5__* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC9 (float*,float*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float*,float*) ; 
 int /*<<< orphan*/ * debugBlockPoints ; 
 TYPE_4__* debugFacet ; 
 TYPE_3__* debugPatchCollide ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC12( void (*drawPoly)(int color, int numPoints, float *points) ) {
	static cvar_t	*cv;
#ifndef BSPC
	static cvar_t	*cv2;
#endif
	const patchCollide_t	*pc;
	facet_t			*facet;
	winding_t		*w;
	int				i, j, k, n;
	int				curplanenum, planenum, curinward, inward;
	float			plane[4];
	vec3_t mins = {-15, -15, -28}, maxs = {15, 15, 28};
	//vec3_t mins = {0, 0, 0}, maxs = {0, 0, 0};
	vec3_t v1, v2;

#ifndef BSPC
	if ( !cv2 )
	{
		cv2 = FUNC4( "r_debugSurface", "0", 0 );
	}

	if (cv2->integer != 1)
	{
		FUNC1(drawPoly, cv2->integer);
		return;
	}
#endif

	if ( !debugPatchCollide ) {
		return;
	}

#ifndef BSPC
	if ( !cv ) {
		cv = FUNC4( "cm_debugSize", "2", 0 );
	}
#endif
	pc = debugPatchCollide;

	for ( i = 0, facet = pc->facets ; i < pc->numFacets ; i++, facet++ ) {

		for ( k = 0 ; k < facet->numBorders + 1; k++ ) {
			//
			if (k < facet->numBorders) {
				planenum = facet->borderPlanes[k];
				inward = facet->borderInward[k];
			}
			else {
				planenum = facet->surfacePlane;
				inward = qfalse;
				//continue;
			}

			FUNC7( pc->planes[ planenum ].plane, plane );

			//planenum = facet->surfacePlane;
			if ( inward ) {
				FUNC10( vec3_origin, plane, plane );
				plane[3] = -plane[3];
			}

			plane[3] += cv->value;
			//*
			for (n = 0; n < 3; n++)
			{
				if (plane[n] > 0) v1[n] = maxs[n];
				else v1[n] = mins[n];
			} //end for
			FUNC9(plane, v2);
			plane[3] += FUNC11(FUNC5(v1, v2));
			//*/

			w = FUNC0( plane,  plane[3] );
			for ( j = 0 ; j < facet->numBorders + 1 && w; j++ ) {
				//
				if (j < facet->numBorders) {
					curplanenum = facet->borderPlanes[j];
					curinward = facet->borderInward[j];
				}
				else {
					curplanenum = facet->surfacePlane;
					curinward = qfalse;
					//continue;
				}
				//
				if (curplanenum == planenum) continue;

				FUNC7( pc->planes[ curplanenum ].plane, plane );
				if ( !curinward ) {
					FUNC10( vec3_origin, plane, plane );
					plane[3] = -plane[3];
				}
		//			if ( !facet->borderNoAdjust[j] ) {
					plane[3] -= cv->value;
		//			}
				for (n = 0; n < 3; n++)
				{
					if (plane[n] > 0) v1[n] = maxs[n];
					else v1[n] = mins[n];
				} //end for
				FUNC9(plane, v2);
				plane[3] -= FUNC11(FUNC5(v1, v2));

				FUNC2( &w, plane, plane[3], 0.1f );
			}
			if ( w ) {
				if ( facet == debugFacet ) {
					drawPoly( 4, w->numpoints, w->p[0] );
					//Com_Printf("blue facet has %d border planes\n", facet->numBorders);
				} else {
					drawPoly( 1, w->numpoints, w->p[0] );
				}
				FUNC6( w );
			}
			else
				FUNC3("winding chopped away by border planes\n");
		}
	}

	// draw the debug block
	{
		vec3_t			v[3];

		FUNC8( debugBlockPoints[0], v[0] );
		FUNC8( debugBlockPoints[1], v[1] );
		FUNC8( debugBlockPoints[2], v[2] );
		drawPoly( 2, 3, v[0] );

		FUNC8( debugBlockPoints[2], v[0] );
		FUNC8( debugBlockPoints[3], v[1] );
		FUNC8( debugBlockPoints[0], v[2] );
		drawPoly( 2, 3, v[0] );
	}

#if 0
	vec3_t			v[4];

	v[0][0] = pc->bounds[1][0];
	v[0][1] = pc->bounds[1][1];
	v[0][2] = pc->bounds[1][2];

	v[1][0] = pc->bounds[1][0];
	v[1][1] = pc->bounds[0][1];
	v[1][2] = pc->bounds[1][2];

	v[2][0] = pc->bounds[0][0];
	v[2][1] = pc->bounds[0][1];
	v[2][2] = pc->bounds[1][2];

	v[3][0] = pc->bounds[0][0];
	v[3][1] = pc->bounds[1][1];
	v[3][2] = pc->bounds[1][2];

	drawPoly( 4, v[0] );
#endif
}