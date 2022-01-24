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
struct device_node {int dummy; } ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*) ; 

int FUNC4(struct device_node *device)
{
	int nid = NUMA_NO_NODE;

	FUNC1(device);
	while (device) {
		nid = FUNC3(device);
		if (nid != -1)
			break;

		device = FUNC0(device);
	}
	FUNC2(device);

	return nid;
}