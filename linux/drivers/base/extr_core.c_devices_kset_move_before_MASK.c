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
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_2__* devices_kset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *deva, struct device *devb)
{
	if (!devices_kset)
		return;
	FUNC2("devices_kset: Moving %s before %s\n",
		 FUNC0(deva), FUNC0(devb));
	FUNC3(&devices_kset->list_lock);
	FUNC1(&deva->kobj.entry, &devb->kobj.entry);
	FUNC4(&devices_kset->list_lock);
}