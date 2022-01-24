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
struct acpi_iort_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORT_MSI_TYPE ; 
 struct acpi_iort_node* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_iort_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

u32 FUNC2(struct device *dev, u32 req_id)
{
	struct acpi_iort_node *node;
	u32 dev_id;

	node = FUNC0(dev);
	if (!node)
		return req_id;

	FUNC1(node, req_id, &dev_id, IORT_MSI_TYPE);
	return dev_id;
}