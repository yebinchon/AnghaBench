#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_16__ {TYPE_1__* si; } ;
typedef  TYPE_2__ surfaceInfo_t ;
struct TYPE_17__ {float* plane; } ;
typedef  TYPE_3__ rawLightmap_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_18__ {int /*<<< orphan*/  xyz; } ;
typedef  TYPE_4__ bspDrawVert_t ;
struct TYPE_15__ {int /*<<< orphan*/ * normalImage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC1 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_4__**,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_4__*,float*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ QUAD_PLANAR_EPSILON ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 scalar_t__ FUNC6 (float) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

__attribute__((used)) static qboolean FUNC7( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv[ 4 ] ){
	float dist;
	vec4_t plane;
	vec3_t          *stv, *ttv, stvStatic[ 4 ], ttvStatic[ 4 ];


	/* get plane if possible */
	if ( lm->plane != NULL ) {
		FUNC5( lm->plane, plane );
		plane[ 3 ] = lm->plane[ 3 ];
	}

	/* otherwise make one from the points */
	else if ( FUNC4( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) == qfalse ) {
		return qfalse;
	}

	/* 4th point must fall on the plane */
	dist = FUNC1( plane, dv[ 3 ]->xyz ) - plane[ 3 ];
	if ( FUNC6( dist ) > QUAD_PLANAR_EPSILON ) {
		return qfalse;
	}

	/* check to see if we need to calculate texture->world tangent vectors */
	if ( info->si->normalImage != NULL && FUNC0( 4, dv, stvStatic, ttvStatic ) ) {
		stv = stvStatic;
		ttv = ttvStatic;
	}
	else
	{
		stv = NULL;
		ttv = NULL;
	}

	/* map the vertexes */
	FUNC3( lm, info, dv[ 0 ], plane, 1, stv, ttv );
	FUNC3( lm, info, dv[ 1 ], plane, 1, stv, ttv );
	FUNC3( lm, info, dv[ 2 ], plane, 1, stv, ttv );
	FUNC3( lm, info, dv[ 3 ], plane, 1, stv, ttv );

	/* subdivide the quad */
	FUNC2( lm, info, dv, plane, stv, ttv );
	return qtrue;
}