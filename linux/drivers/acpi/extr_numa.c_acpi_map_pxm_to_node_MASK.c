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

/* Variables and functions */
 scalar_t__ MAX_NUMNODES ; 
 int MAX_PXM_DOMAINS ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nodes_found_map ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ numa_off ; 
 int* pxm_to_node_map ; 

int FUNC4(int pxm)
{
	int node;

	if (pxm < 0 || pxm >= MAX_PXM_DOMAINS || numa_off)
		return NUMA_NO_NODE;

	node = pxm_to_node_map[pxm];

	if (node == NUMA_NO_NODE) {
		if (FUNC3(nodes_found_map) >= MAX_NUMNODES)
			return NUMA_NO_NODE;
		node = FUNC1(nodes_found_map);
		FUNC0(pxm, node);
		FUNC2(node, nodes_found_map);
	}

	return node;
}