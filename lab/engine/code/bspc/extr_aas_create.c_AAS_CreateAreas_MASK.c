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
struct TYPE_2__ {int /*<<< orphan*/  numareas; int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__ tmpaasworld ; 

void FUNC3(node_t *node)
{
	FUNC1("AAS_CreateAreas\r\n");
	FUNC2("%6d areas created", 0);
	tmpaasworld.nodes = FUNC0(node);
	FUNC2("\n");
	FUNC1("%6d areas created\r\n", tmpaasworld.numareas);
}