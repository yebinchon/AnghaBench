#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_5__ {TYPE_1__** nodes; } ;
typedef  TYPE_2__ portal_t ;
struct TYPE_4__ {scalar_t__ planenum; int contents; } ;

/* Variables and functions */
 int CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PLANENUM_LEAF ; 

qboolean FUNC1 (portal_t *p, int s)
{
	if (p->nodes[0]->planenum != PLANENUM_LEAF
		|| p->nodes[1]->planenum != PLANENUM_LEAF)
		FUNC0 ("Portal_EntityFlood: not a leaf");

	// can never cross to a solid 
	if ( (p->nodes[0]->contents & CONTENTS_SOLID)
	|| (p->nodes[1]->contents & CONTENTS_SOLID) )
		return false;

	// can flood through everything else
	return true;
}