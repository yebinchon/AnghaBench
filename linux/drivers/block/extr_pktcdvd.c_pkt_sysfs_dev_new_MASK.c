#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pktcdvd_device {TYPE_1__* dev; void* kobj_wqueue; void* kobj_stat; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ class_pktcdvd ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kobj_pkt_type_stat ; 
 int /*<<< orphan*/  kobj_pkt_type_wqueue ; 
 void* FUNC3 (struct pktcdvd_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pktcdvd_device *pd)
{
	if (class_pktcdvd) {
		pd->dev = FUNC2(class_pktcdvd, NULL, FUNC1(0, 0), NULL,
					"%s", pd->name);
		if (FUNC0(pd->dev))
			pd->dev = NULL;
	}
	if (pd->dev) {
		pd->kobj_stat = FUNC3(pd, "stat",
					&pd->dev->kobj,
					&kobj_pkt_type_stat);
		pd->kobj_wqueue = FUNC3(pd, "write_queue",
					&pd->dev->kobj,
					&kobj_pkt_type_wqueue);
	}
}