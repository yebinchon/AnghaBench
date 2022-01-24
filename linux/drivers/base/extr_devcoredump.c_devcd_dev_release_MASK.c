#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct devcd_entry {TYPE_2__* failing_dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  data; int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {scalar_t__ sd; } ;
struct TYPE_4__ {TYPE_1__ kobj; } ;

/* Variables and functions */
 struct devcd_entry* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct devcd_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct devcd_entry *devcd = FUNC0(dev);

	devcd->free(devcd->data);
	FUNC2(devcd->owner);

	/*
	 * this seems racy, but I don't see a notifier or such on
	 * a struct device to know when it goes away?
	 */
	if (devcd->failing_dev->kobj.sd)
		FUNC5(&devcd->failing_dev->kobj, &dev->kobj,
				  "devcoredump");

	FUNC3(devcd->failing_dev);
	FUNC1(devcd);
}