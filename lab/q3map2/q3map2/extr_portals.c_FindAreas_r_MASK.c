#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ planenum; int area; scalar_t__ areaportal; scalar_t__ opaque; struct TYPE_4__** children; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  c_areas ; 

void FUNC1( node_t *node ){
	if ( node->planenum != PLANENUM_LEAF ) {
		FUNC1( node->children[ 0 ] );
		FUNC1( node->children[ 1 ] );
		return;
	}

	if ( node->opaque || node->areaportal || node->area != -1 ) {
		return;
	}

	FUNC0( node );
	c_areas++;
}