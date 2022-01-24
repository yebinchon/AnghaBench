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
struct TYPE_5__ {scalar_t__ planenum; struct TYPE_5__** children; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (node_t *node)
{
	if (node->planenum == PLANENUM_LEAF)
		return;

	FUNC0 (node);
	FUNC1 (node);

	FUNC2 (node->children[0]);
	FUNC2 (node->children[1]);
}