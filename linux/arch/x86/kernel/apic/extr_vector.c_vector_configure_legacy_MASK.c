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
struct irq_data {int dummy; } ;
struct apic_chip_data {int can_reserve; scalar_t__ cpu; int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vector_lock ; 

__attribute__((used)) static bool FUNC8(unsigned int virq, struct irq_data *irqd,
				    struct apic_chip_data *apicd)
{
	unsigned long flags;
	bool realloc = false;

	apicd->vector = FUNC0(virq);
	apicd->cpu = 0;

	FUNC5(&vector_lock, flags);
	/*
	 * If the interrupt is activated, then it must stay at this vector
	 * position. That's usually the timer interrupt (0).
	 */
	if (FUNC3(irqd)) {
		FUNC7(virq, true, 0);
		FUNC1(irqd, apicd->vector, apicd->cpu);
	} else {
		/* Release the vector */
		apicd->can_reserve = true;
		FUNC4(irqd);
		FUNC2(irqd);
		realloc = true;
	}
	FUNC6(&vector_lock, flags);
	return realloc;
}