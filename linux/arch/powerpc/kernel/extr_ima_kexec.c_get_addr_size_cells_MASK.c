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
 int EINVAL ; 
 struct device_node* FUNC0 (char*) ; 
 int FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(int *addr_cells, int *size_cells)
{
	struct device_node *root;

	root = FUNC0("/");
	if (!root)
		return -EINVAL;

	*addr_cells = FUNC1(root);
	*size_cells = FUNC2(root);

	FUNC3(root);

	return 0;
}