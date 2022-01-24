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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,int,...) ; 
 int FUNC1 (struct device_node*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

void FUNC3(struct device_node *np,
				irq_handler_t handler,
				const char *name)
{
	int i, virq, rc;

	for (i = 0; i < 16; i++) {
		virq = FUNC1(np, i);
		if (virq < 0)
			return;
		if (FUNC0(!virq, "event-sources: Unable to allocate "
			        "interrupt number for %pOF\n", np))
			continue;

		rc = FUNC2(virq, handler, 0, name, NULL);
		if (FUNC0(rc, "event-sources: Unable to request interrupt %d for %pOF\n",
		    virq, np))
			return;
	}
}