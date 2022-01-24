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
struct irq_data {scalar_t__ chip_data; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int IRQ_SET_MASK_OK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct cpumask const*) ; 
 struct cpumask const* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  leon_irq_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct irq_data *data, const struct cpumask *dest,
			     bool force)
{
	unsigned long mask, oldmask, flags;
	int oldcpu, newcpu;

	mask = (unsigned long)data->chip_data;
	oldcpu = FUNC3(FUNC4(data));
	newcpu = FUNC3(dest);

	if (oldcpu == newcpu)
		goto out;

	/* unmask on old CPU first before enabling on the selected CPU */
	FUNC5(&leon_irq_lock, flags);
	oldmask = FUNC0(FUNC2(oldcpu));
	FUNC1(FUNC2(oldcpu), (oldmask & ~mask));
	oldmask = FUNC0(FUNC2(newcpu));
	FUNC1(FUNC2(newcpu), (oldmask | mask));
	FUNC6(&leon_irq_lock, flags);
out:
	return IRQ_SET_MASK_OK;
}