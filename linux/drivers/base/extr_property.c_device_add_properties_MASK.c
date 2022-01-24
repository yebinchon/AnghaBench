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
struct property_entry {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fwnode_handle*) ; 
 int FUNC1 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC2 (struct property_entry const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct fwnode_handle*) ; 

int FUNC4(struct device *dev,
			  const struct property_entry *properties)
{
	struct fwnode_handle *fwnode;

	fwnode = FUNC2(properties, NULL);
	if (FUNC0(fwnode))
		return FUNC1(fwnode);

	FUNC3(dev, fwnode);
	return 0;
}