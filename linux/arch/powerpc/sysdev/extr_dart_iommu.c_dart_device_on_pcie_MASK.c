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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static bool FUNC4(struct device *dev)
{
	struct device_node *np = FUNC2(dev->of_node);

	while(np) {
		if (FUNC0(np, "U4-pcie") ||
		    FUNC0(np, "u4-pcie")) {
			FUNC3(np);
			return true;
		}
		np = FUNC1(np);
	}
	return false;
}