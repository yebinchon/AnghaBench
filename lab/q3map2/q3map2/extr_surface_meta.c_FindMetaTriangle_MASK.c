#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_16__ {int planeNum; float* plane; float* lightmapAxis; void** indexes; TYPE_1__* si; } ;
typedef  TYPE_2__ metaTriangle_t ;
struct TYPE_17__ {float* normal; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_3__ bspDrawVert_t ;
struct TYPE_18__ {float* normal; float dist; } ;
struct TYPE_15__ {int compileFlags; float* lightmapAxis; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int C_VERTEXLIT ; 
 int /*<<< orphan*/  FUNC1 (float*,float*) ; 
 void* FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 float FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 TYPE_9__* mapplanes ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* metaTriangles ; 
 int numMetaTriangles ; 
 scalar_t__ qfalse ; 

int FUNC9( metaTriangle_t *src, bspDrawVert_t *a, bspDrawVert_t *b, bspDrawVert_t *c, int planeNum ){
	int triIndex;
	vec3_t dir;



	/* detect degenerate triangles fixme: do something proper here */
	FUNC6( a->xyz, b->xyz, dir );
	if ( FUNC5( dir ) < 0.125f ) {
		return -1;
	}
	FUNC6( b->xyz, c->xyz, dir );
	if ( FUNC5( dir ) < 0.125f ) {
		return -1;
	}
	FUNC6( c->xyz, a->xyz, dir );
	if ( FUNC5( dir ) < 0.125f ) {
		return -1;
	}

	/* find plane */
	if ( planeNum >= 0 ) {
		/* because of precision issues with small triangles, try to use the specified plane */
		src->planeNum = planeNum;
		FUNC4( mapplanes[ planeNum ].normal, src->plane );
		src->plane[ 3 ] = mapplanes[ planeNum ].dist;
	}
	else
	{
		/* calculate a plane from the triangle's points (and bail if a plane can't be constructed) */
		src->planeNum = -1;
		if ( FUNC3( src->plane, a->xyz, b->xyz, c->xyz ) == qfalse ) {
			return -1;
		}
	}

	/* ydnar 2002-10-03: repair any bogus normals (busted ase import kludge) */
	if ( FUNC5( a->normal ) <= 0.0f ) {
		FUNC4( src->plane, a->normal );
	}
	if ( FUNC5( b->normal ) <= 0.0f ) {
		FUNC4( src->plane, b->normal );
	}
	if ( FUNC5( c->normal ) <= 0.0f ) {
		FUNC4( src->plane, c->normal );
	}

	/* ydnar 2002-10-04: set lightmap axis if not already set */
	if ( !( src->si->compileFlags & C_VERTEXLIT ) &&
		 src->lightmapAxis[ 0 ] == 0.0f && src->lightmapAxis[ 1 ] == 0.0f && src->lightmapAxis[ 2 ] == 0.0f ) {
		/* the shader can specify an explicit lightmap axis */
		if ( src->si->lightmapAxis[ 0 ] || src->si->lightmapAxis[ 1 ] || src->si->lightmapAxis[ 2 ] ) {
			FUNC4( src->si->lightmapAxis, src->lightmapAxis );
		}

		/* new axis-finding code */
		else{
			FUNC1( src->plane, src->lightmapAxis );
		}
	}

	/* fill out the src triangle */
	src->indexes[ 0 ] = FUNC2( a );
	src->indexes[ 1 ] = FUNC2( b );
	src->indexes[ 2 ] = FUNC2( c );

	/* try to find an existing triangle */
	#ifdef USE_EXHAUSTIVE_SEARCH
	{
		int i;
		metaTriangle_t  *tri;


		for ( i = 0, tri = metaTriangles; i < numMetaTriangles; i++, tri++ )
		{
			if ( memcmp( src, tri, sizeof( metaTriangle_t ) ) == 0 ) {
				return i;
			}
		}
	}
	#endif

	/* get a new triangle */
	triIndex = FUNC0();

	/* add the triangle */
	FUNC8( &metaTriangles[ triIndex ], src, sizeof( metaTriangle_t ) );

	/* return the triangle index */
	return triIndex;
}