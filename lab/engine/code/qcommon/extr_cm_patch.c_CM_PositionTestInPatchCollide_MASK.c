#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_6__ {float* offset; scalar_t__ radius; scalar_t__ use; } ;
struct TYPE_7__ {float* start; float** offsets; TYPE_1__ sphere; scalar_t__ isPoint; } ;
typedef  TYPE_2__ traceWork_t ;
struct patchCollide_s {int numFacets; TYPE_3__* planes; TYPE_4__* facets; } ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {float* plane; size_t signbits; } ;
typedef  TYPE_3__ patchPlane_t ;
struct TYPE_9__ {size_t surfacePlane; int numBorders; size_t* borderPlanes; scalar_t__* borderInward; } ;
typedef  TYPE_4__ facet_t ;

/* Variables and functions */
 float FUNC0 (float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float*) ; 
 scalar_t__ FUNC5 (float) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC6( traceWork_t *tw, const struct patchCollide_s *pc ) {
	int i, j;
	float offset, t;
	patchPlane_t *planes;
	facet_t	*facet;
	float plane[4];
	vec3_t startp;

	if (tw->isPoint) {
		return qfalse;
	}
	//
	facet = pc->facets;
	for ( i = 0 ; i < pc->numFacets ; i++, facet++ ) {
		planes = &pc->planes[ facet->surfacePlane ];
		FUNC2(planes->plane, plane);
		plane[3] = planes->plane[3];
		if ( tw->sphere.use ) {
			// adjust the plane distance appropriately for radius
			plane[3] += tw->sphere.radius;

			// find the closest point on the capsule to the plane
			t = FUNC0( plane, tw->sphere.offset );
			if ( t > 0 ) {
				FUNC4( tw->start, tw->sphere.offset, startp );
			}
			else {
				FUNC1( tw->start, tw->sphere.offset, startp );
			}
		}
		else {
			offset = FUNC0( tw->offsets[ planes->signbits ], plane);
			plane[3] -= offset;
			FUNC2( tw->start, startp );
		}

		if ( FUNC0( plane, startp ) - plane[3] > 0.0f ) {
			continue;
		}

		for ( j = 0; j < facet->numBorders; j++ ) {
			planes = &pc->planes[ facet->borderPlanes[j] ];
			if (facet->borderInward[j]) {
				FUNC3(planes->plane, plane);
				plane[3] = -planes->plane[3];
			}
			else {
				FUNC2(planes->plane, plane);
				plane[3] = planes->plane[3];
			}
			if ( tw->sphere.use ) {
				// adjust the plane distance appropriately for radius
				plane[3] += tw->sphere.radius;

				// find the closest point on the capsule to the plane
				t = FUNC0( plane, tw->sphere.offset );
				if ( t > 0.0f ) {
					FUNC4( tw->start, tw->sphere.offset, startp );
				}
				else {
					FUNC1( tw->start, tw->sphere.offset, startp );
				}
			}
			else {
				// NOTE: this works even though the plane might be flipped because the bbox is centered
				offset = FUNC0( tw->offsets[ planes->signbits ], plane);
				plane[3] += FUNC5(offset);
				FUNC2( tw->start, startp );
			}

			if ( FUNC0( plane, startp ) - plane[3] > 0.0f ) {
				break;
			}
		}
		if (j < facet->numBorders) {
			continue;
		}
		// inside this patch facet
		return qtrue;
	}
	return qfalse;
}