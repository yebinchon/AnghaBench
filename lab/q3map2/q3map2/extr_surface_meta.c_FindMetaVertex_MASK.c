#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bspDrawVert_t ;

/* Variables and functions */
 scalar_t__ GROW_META_VERTS ; 
 int firstSearchMetaVert ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int maxMetaVerts ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * metaVerts ; 
 int numMetaVerts ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( bspDrawVert_t *src ){
	int i;
	bspDrawVert_t   *v, *temp;


	/* try to find an existing drawvert */
	for ( i = firstSearchMetaVert, v = &metaVerts[ i ]; i < numMetaVerts; i++, v++ )
	{
		if ( FUNC1( src, v, sizeof( bspDrawVert_t ) ) == 0 ) {
			return i;
		}
	}

	/* enough space? */
	if ( numMetaVerts >= maxMetaVerts ) {
		/* reallocate more room */
		maxMetaVerts += GROW_META_VERTS;
		temp = FUNC3( maxMetaVerts * sizeof( bspDrawVert_t ) );
		if ( metaVerts != NULL ) {
			FUNC2( temp, metaVerts, numMetaVerts * sizeof( bspDrawVert_t ) );
			FUNC0( metaVerts );
		}
		metaVerts = temp;
	}

	/* add the triangle */
	FUNC2( &metaVerts[ numMetaVerts ], src, sizeof( bspDrawVert_t ) );
	numMetaVerts++;

	/* return the count */
	return ( numMetaVerts - 1 );
}