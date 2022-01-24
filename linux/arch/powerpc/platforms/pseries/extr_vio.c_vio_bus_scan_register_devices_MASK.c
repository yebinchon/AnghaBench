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
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static void FUNC4(char *root_name)
{
	struct device_node *node_root, *node_child;

	if (!root_name)
		return;

	node_root = FUNC0(NULL, root_name);
	if (node_root) {

		/*
		 * Create struct vio_devices for each virtual device in
		 * the device tree. Drivers will associate with them later.
		 */
		node_child = FUNC1(node_root, NULL);
		while (node_child) {
			FUNC3(node_child);
			node_child = FUNC1(node_root, node_child);
		}
		FUNC2(node_root);
	}
}