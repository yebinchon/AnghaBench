#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float dist; int /*<<< orphan*/  normal; } ;
struct TYPE_7__ {int* portalfront; int* portalflood; int* portalvis; float radius; scalar_t__ nummightsee; int /*<<< orphan*/  leaf; TYPE_1__ plane; TYPE_3__* winding; int /*<<< orphan*/  origin; scalar_t__ removed; } ;
typedef  TYPE_2__ vportal_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int numpoints; int /*<<< orphan*/ * points; } ;
typedef  TYPE_3__ fixedWinding_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float ON_EPSILON ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_flood ; 
 float farPlaneDist ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int numportals ; 
 int /*<<< orphan*/  portal_mutex ; 
 int /*<<< orphan*/  portalbytes ; 
 TYPE_2__* portals ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9( int portalnum ){
	int j, k;
	vportal_t   *tp, *p;
	float d;
	fixedWinding_t  *w;
	vec3_t dir;


	p = portals + portalnum;

	if ( p->removed ) {
		return;
	}

	p->portalfront = FUNC8( portalbytes );
	FUNC5( p->portalfront, 0, portalbytes );

	p->portalflood = FUNC8( portalbytes );
	FUNC5( p->portalflood, 0, portalbytes );

	p->portalvis = FUNC8( portalbytes );
	FUNC5( p->portalvis, 0, portalbytes );

	for ( j = 0, tp = portals ; j < numportals * 2 ; j++, tp++ )
	{
		if ( j == portalnum ) {
			continue;
		}
		if ( tp->removed ) {
			continue;
		}

		/* ydnar: this is old farplane vis code from mre */
		/*
		   if (farplanedist >= 0)
		   {
		    vec3_t dir;
		    VectorSubtract(p->origin, tp->origin, dir);
		    if (VectorLength(dir) > farplanedist - p->radius - tp->radius)
		        continue;
		   }
		 */

		/* ydnar: this is known-to-be-working farplane code */
		if ( farPlaneDist > 0.0f ) {
			FUNC4( p->origin, tp->origin, dir );
			if ( FUNC3( dir ) - p->radius - tp->radius > farPlaneDist ) {
				continue;
			}
		}


		w = tp->winding;
		for ( k = 0 ; k < w->numpoints ; k++ )
		{
			d = FUNC1( w->points[k], p->plane.normal )
				- p->plane.dist;
			if ( d > ON_EPSILON ) {
				break;
			}
		}
		if ( k == w->numpoints ) {
			continue;   // no points on front

		}
		w = p->winding;
		for ( k = 0 ; k < w->numpoints ; k++ )
		{
			d = FUNC1( w->points[k], tp->plane.normal )
				- tp->plane.dist;
			if ( d < -ON_EPSILON ) {
				break;
			}
		}
		if ( k == w->numpoints ) {
			continue;   // no points on front

		}
		p->portalfront[j >> 3] |= ( 1 << ( j & 7 ) );
	}

	FUNC2( p, p->leaf );

	FUNC6( &portal_mutex );
	p->nummightsee = FUNC0( p->portalflood, numportals * 2 );
//	Sys_Printf ("portal %i: %i mightsee\n", portalnum, p->nummightsee);
	c_flood += p->nummightsee;
	FUNC7( &portal_mutex );
}