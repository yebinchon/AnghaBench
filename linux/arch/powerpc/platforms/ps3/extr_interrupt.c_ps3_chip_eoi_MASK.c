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
struct ps3_private {int /*<<< orphan*/  thread_id; int /*<<< orphan*/  ppe_id; int /*<<< orphan*/  ipi_mask; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct ps3_private* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	const struct ps3_private *pd = FUNC0(d);

	/* non-IPIs are EOIed here. */

	if (!FUNC2(63 - d->irq, &pd->ipi_mask))
		FUNC1(pd->ppe_id, pd->thread_id, d->irq);
}