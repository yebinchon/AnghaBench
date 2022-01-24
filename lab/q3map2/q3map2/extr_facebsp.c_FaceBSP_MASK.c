#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_6__* headnode; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_2__ tree_t ;
struct TYPE_12__ {TYPE_1__* w; struct TYPE_12__* next; } ;
typedef  TYPE_3__ face_t ;
struct TYPE_13__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_10__ {int numpoints; int /*<<< orphan*/ * p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int c_faceLeafs ; 

tree_t *FUNC6( face_t *list ) {
	tree_t      *tree;
	face_t  *face;
	int i;
	int count;

	FUNC4( SYS_VRB, "--- FaceBSP ---\n" );

	tree = FUNC2();

	count = 0;
	for ( face = list; face != NULL; face = face->next )
	{
		count++;
		for ( i = 0; i < face->w->numpoints; i++ )
		{
			FUNC0( face->w->p[ i ], tree->mins, tree->maxs );
		}
	}
	FUNC4( SYS_VRB, "%9d faces\n", count );

	tree->headnode = FUNC1();
	FUNC5( tree->mins, tree->headnode->mins );
	FUNC5( tree->maxs, tree->headnode->maxs );
	c_faceLeafs = 0;

	FUNC3( tree->headnode, list );

	FUNC4( SYS_VRB, "%9d leafs\n", c_faceLeafs );

	return tree;
}