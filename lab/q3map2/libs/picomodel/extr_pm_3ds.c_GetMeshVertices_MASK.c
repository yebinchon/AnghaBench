#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double* picoVec3_t ;
struct TYPE_5__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__ T3dsLoaderPers ;

/* Variables and functions */
 double FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  FUNC4 (char*,double,...) ; 
 int /*<<< orphan*/  white ; 

__attribute__((used)) static int FUNC5( T3dsLoaderPers *pers ){
	int numVerts;
	int i;

	/* get number of verts for this surface */
	numVerts = FUNC1( pers );

#ifdef DEBUG_PM_3DS
	printf( "GetMeshVertices: numverts %d\n",numVerts );
#endif
	/* read in vertices for current surface */
	for ( i = 0; i < numVerts; i++ )
	{
		picoVec3_t v;
		v[0] = FUNC0( pers );
		v[1] = FUNC0( pers );    /* ydnar: unflipped */
		v[2] = FUNC0( pers );    /* ydnar: unflipped and negated */

		/* add current vertex */
		FUNC3( pers->surface,i,v );
		FUNC2( pers->surface,0,i,white ); /* ydnar */

#ifdef DEBUG_PM_3DS_EX
		printf( "Vertex: x: %f y: %f z: %f\n",v[0],v[1],v[2] );
#endif
	}
	/* success (no errors occured) */
	return 1;
}