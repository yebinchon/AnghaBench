#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  class_groups; int /*<<< orphan*/  class_release; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__* class_pktcdvd ; 
 int /*<<< orphan*/  class_pktcdvd_groups ; 
 int /*<<< orphan*/  class_pktcdvd_release ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret = 0;

	/*
	 * create control files in sysfs
	 * /sys/class/pktcdvd/...
	 */
	class_pktcdvd = FUNC2(sizeof(*class_pktcdvd), GFP_KERNEL);
	if (!class_pktcdvd)
		return -ENOMEM;
	class_pktcdvd->name = DRIVER_NAME;
	class_pktcdvd->owner = THIS_MODULE;
	class_pktcdvd->class_release = class_pktcdvd_release;
	class_pktcdvd->class_groups = class_pktcdvd_groups;
	ret = FUNC0(class_pktcdvd);
	if (ret) {
		FUNC1(class_pktcdvd);
		class_pktcdvd = NULL;
		FUNC3("failed to create class pktcdvd\n");
		return ret;
	}
	return 0;
}