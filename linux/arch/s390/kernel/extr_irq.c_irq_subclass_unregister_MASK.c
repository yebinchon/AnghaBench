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
typedef  enum irq_subclass { ____Placeholder_irq_subclass } irq_subclass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  irq_subclass_lock ; 
 int /*<<< orphan*/ * irq_subclass_refcount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(enum irq_subclass subclass)
{
	FUNC1(&irq_subclass_lock);
	irq_subclass_refcount[subclass]--;
	if (!irq_subclass_refcount[subclass])
		FUNC0(0, subclass);
	FUNC2(&irq_subclass_lock);
}