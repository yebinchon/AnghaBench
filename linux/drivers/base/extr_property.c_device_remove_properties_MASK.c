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
struct fwnode_handle {int /*<<< orphan*/  secondary; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct fwnode_handle* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 

void FUNC4(struct device *dev)
{
	struct fwnode_handle *fwnode = FUNC0(dev);

	if (!fwnode)
		return;

	if (FUNC2(fwnode->secondary)) {
		FUNC1(fwnode->secondary);
		FUNC3(dev, NULL);
	}
}