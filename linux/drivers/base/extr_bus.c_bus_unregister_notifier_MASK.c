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
struct notifier_block {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_notifier; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC1(struct bus_type *bus, struct notifier_block *nb)
{
	return FUNC0(&bus->p->bus_notifier, nb);
}