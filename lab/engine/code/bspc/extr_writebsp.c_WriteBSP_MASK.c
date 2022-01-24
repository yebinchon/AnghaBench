#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_t ;
struct TYPE_2__ {int /*<<< orphan*/  headnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int c_facenodes ; 
 int c_nofaces ; 
 TYPE_1__* dmodels ; 
 int numfaces ; 
 size_t nummodels ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3 (node_t *headnode)
{
	int		oldfaces;

	c_nofaces = 0;
	c_facenodes = 0;

	FUNC2 ("--- WriteBSP ---\n");

	oldfaces = numfaces;
	dmodels[nummodels].headnode = FUNC1 (headnode);
	FUNC0 (headnode);

	FUNC2 ("%5i nodes with faces\n", c_facenodes);
	FUNC2 ("%5i nodes without faces\n", c_nofaces);
	FUNC2 ("%5i faces\n", numfaces-oldfaces);
}