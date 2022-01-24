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
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  nodename; } ;
struct backend_info {struct xenbus_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,int) ; 

int FUNC2(struct xenbus_transaction xbt,
			      struct backend_info *be, int state)
{
	struct xenbus_device *dev = be->dev;
	int err;

	err = FUNC1(xbt, dev->nodename, "feature-flush-cache",
			    "%d", state);
	if (err)
		FUNC0(&dev->dev, "writing feature-flush-cache (%d)", err);

	return err;
}