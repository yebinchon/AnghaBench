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
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_attr_group_match ; 
 int /*<<< orphan*/  devm_attr_groups_remove ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void FUNC2(struct device *dev,
			       const struct attribute_group **groups)
{
	FUNC0(FUNC1(dev, devm_attr_groups_remove,
			       devm_attr_group_match,
			       /* cast away const */ (void *)groups));
}