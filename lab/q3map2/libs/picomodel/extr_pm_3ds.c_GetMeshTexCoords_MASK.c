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
typedef  double* picoVec2_t ;
struct TYPE_5__ {int /*<<< orphan*/ * surface; } ;
typedef  TYPE_1__ T3dsLoaderPers ;

/* Variables and functions */
 double FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  FUNC3 (char*,double,...) ; 

__attribute__((used)) static int FUNC4( T3dsLoaderPers *pers ){
	int numTexCoords;
	int i;

	/* get number of uv coords for this surface */
	numTexCoords = FUNC1( pers );

#ifdef DEBUG_PM_3DS
	printf( "GetMeshTexCoords: numcoords %d\n",numTexCoords );
#endif
	/* read in uv coords for current surface */
	for ( i = 0; i < numTexCoords; i++ )
	{
		picoVec2_t uv;
		uv[0] =  FUNC0( pers );
		uv[1] = -FUNC0( pers );  /* ydnar: we use origin at bottom */

		/* to make sure we don't mess up memory */
		if ( pers->surface == NULL ) {
			continue;
		}

		/* add current uv */
		FUNC2( pers->surface,0,i,uv );

#ifdef DEBUG_PM_3DS_EX
		printf( "u: %f v: %f\n",uv[0],uv[1] );
#endif
	}
	/* success (no errors occured) */
	return 1;
}