#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int numpoints; int /*<<< orphan*/ ** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_18__ {float* mins; float* maxs; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_19__ {int /*<<< orphan*/  dist; int /*<<< orphan*/ * normal; } ;
typedef  TYPE_3__ plane_t ;
struct TYPE_20__ {size_t planenum; struct TYPE_20__** children; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_4__ node_t ;
struct TYPE_21__ {size_t planeNum; TYPE_2__* shaderInfo; } ;
typedef  TYPE_5__ mapDrawSurface_t ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,TYPE_1__**) ; 
 float FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  ON_EPSILON ; 
 size_t PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* mapplanes ; 
 int /*<<< orphan*/  vec3_origin ; 

int FUNC9( winding_t *w, mapDrawSurface_t *ds, node_t *node ){
	int i, refs = 0;
	plane_t         *p1, *p2;
	vec4_t plane1, plane2, reverse;
	winding_t       *fat, *front, *back;
	shaderInfo_t    *si;


	/* get shaderinfo */
	si = ds->shaderInfo;

	/* ydnar: is this the head node? */
	if ( node->parent == NULL && si != NULL &&
		 ( si->mins[ 0 ] != 0.0f || si->maxs[ 0 ] != 0.0f ||
		   si->mins[ 1 ] != 0.0f || si->maxs[ 1 ] != 0.0f ||
		   si->mins[ 2 ] != 0.0f || si->maxs[ 2 ] != 0.0f ) ) {
		/* 'fatten' the winding by the shader mins/maxs (parsed from vertexDeform move) */
		/* note this winding is completely invalid (concave, nonplanar, etc) */
		fat = FUNC1( w->numpoints * 3 );
		fat->numpoints = w->numpoints * 3;
		for ( i = 0; i < w->numpoints; i++ )
		{
			FUNC6( w->p[ i ], fat->p[ i ] );
			FUNC5( w->p[ i ], si->mins, fat->p[ i * 2 ] );
			FUNC5( w->p[ i ], si->maxs, fat->p[ i * 3 ] );
		}

		FUNC4( w );
		w = fat;
	}

	/* is this a decision node? */
	if ( node->planenum != PLANENUM_LEAF ) {
		/* get node plane */
		p1 = &mapplanes[ node->planenum ];
		FUNC6( p1->normal, plane1 );
		plane1[ 3 ] = p1->dist;

		/* check if surface is planar */
		if ( ds->planeNum >= 0 ) {
			/* get surface plane */
			p2 = &mapplanes[ ds->planeNum ];
			FUNC6( p2->normal, plane2 );
			plane2[ 3 ] = p2->dist;

			#if 1
			/* invert surface plane */
			FUNC7( vec3_origin, plane2, reverse );
			reverse[ 3 ] = -plane2[ 3 ];

			/* compare planes */
			if ( FUNC3( plane1, plane2 ) > 0.999f && FUNC8( plane1[ 3 ] - plane2[ 3 ] ) < 0.001f ) {
				return FUNC9( w, ds, node->children[ 0 ] );
			}
			if ( FUNC3( plane1, reverse ) > 0.999f && FUNC8( plane1[ 3 ] - reverse[ 3 ] ) < 0.001f ) {
				return FUNC9( w, ds, node->children[ 1 ] );
			}
			#else
			/* the drawsurf might have an associated plane, if so, force a filter here */
			if ( ds->planeNum == node->planenum ) {
				return FilterWindingIntoTree_r( w, ds, node->children[ 0 ] );
			}
			if ( ds->planeNum == ( node->planenum ^ 1 ) ) {
				return FilterWindingIntoTree_r( w, ds, node->children[ 1 ] );
			}
			#endif
		}

		/* clip the winding by this plane */
		FUNC2( w, plane1, plane1[ 3 ], ON_EPSILON, &front, &back );

		/* filter by this plane */
		refs = 0;
		if ( front != NULL ) {
			refs += FUNC9( front, ds, node->children[ 0 ] );
		}
		if ( back != NULL ) {
			refs += FUNC9( back, ds, node->children[ 1 ] );
		}
		FUNC4( w );

		/* return */
		return refs;
	}

	/* add a reference */
	return FUNC0( ds, node );
}