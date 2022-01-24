#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct swnode {TYPE_1__* node; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct swnode* FUNC1 (struct fwnode_handle const*) ; 

__attribute__((used)) static bool FUNC2(const struct fwnode_handle *fwnode,
					   const char *propname)
{
	struct swnode *swnode = FUNC1(fwnode);

	return !!FUNC0(swnode->node->properties, propname);
}