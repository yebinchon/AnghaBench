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
struct TYPE_5__ {scalar_t__ fogNum; int /*<<< orphan*/ * si; } ;
typedef  TYPE_1__ metaTriangle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CompareMetaTriangles ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* metaTriangles ; 
 int numMergedSurfaces ; 
 int numMergedVerts ; 
 int numMetaTriangles ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

void FUNC5( void ){
	int i, j, fOld, start, numAdded;
	metaTriangle_t      *head, *end;


	/* only do this if there are meta triangles */
	if ( numMetaTriangles <= 0 ) {
		return;
	}

	/* note it */
	FUNC3( SYS_VRB, "--- MergeMetaTriangles ---\n" );

	/* sort the triangles by shader major, fognum minor */
	FUNC4( metaTriangles, numMetaTriangles, sizeof( metaTriangle_t ), CompareMetaTriangles );

	/* init pacifier */
	fOld = -1;
	start = FUNC1();
	numAdded = 0;

	/* merge */
	for ( i = 0, j = 0; i < numMetaTriangles; i = j )
	{
		/* get head of list */
		head = &metaTriangles[ i ];

		/* skip this triangle if it has already been merged */
		if ( head->si == NULL ) {
			continue;
		}

		/* find end */
		if ( j <= i ) {
			for ( j = i + 1; j < numMetaTriangles; j++ )
			{
				/* get end of list */
				end = &metaTriangles[ j ];
				if ( head->si != end->si || head->fogNum != end->fogNum ) {
					break;
				}
			}
		}

		/* try to merge this list of possible merge candidates */
		FUNC2( ( j - i ), head, &fOld, &numAdded );
	}

	/* clear meta triangle list */
	FUNC0();

	/* print time */
	if ( i ) {
		FUNC3( SYS_VRB, " (%d)\n", (int) ( FUNC1() - start ) );
	}

	/* emit some stats */
	FUNC3( SYS_VRB, "%9d surfaces merged\n", numMergedSurfaces );
	FUNC3( SYS_VRB, "%9d vertexes merged\n", numMergedVerts );
}