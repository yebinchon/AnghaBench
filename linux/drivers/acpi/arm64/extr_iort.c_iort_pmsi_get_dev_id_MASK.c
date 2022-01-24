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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct acpi_iort_node {int mapping_count; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORT_MSI_TYPE ; 
 struct acpi_iort_node* FUNC0 (struct device*) ; 
 int FUNC1 (struct acpi_iort_node*) ; 
 scalar_t__ FUNC2 (struct acpi_iort_node*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct acpi_iort_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct device *dev, u32 *dev_id)
{
	int i, index;
	struct acpi_iort_node *node;

	node = FUNC0(dev);
	if (!node)
		return -ENODEV;

	index = FUNC1(node);
	/* if there is a valid index, go get the dev_id directly */
	if (index >= 0) {
		if (FUNC2(node, dev_id, index))
			return 0;
	} else {
		for (i = 0; i < node->mapping_count; i++) {
			if (FUNC3(node, dev_id,
						      IORT_MSI_TYPE, i))
				return 0;
		}
	}

	return -ENODEV;
}