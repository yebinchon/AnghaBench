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
struct irq_data {int /*<<< orphan*/  irq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int IRQ_SET_MASK_OK ; 
 int /*<<< orphan*/  ehv_pic_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,int) ; 
 int FUNC2 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct irq_data *d, const struct cpumask *dest,
			 bool force)
{
	unsigned int src = FUNC5(d->irq);
	unsigned int config, prio, cpu_dest;
	int cpuid = FUNC2(dest);
	unsigned long flags;

	FUNC3(&ehv_pic_lock, flags);
	FUNC0(src, &config, &prio, &cpu_dest);
	FUNC1(src, config, prio, cpuid);
	FUNC4(&ehv_pic_lock, flags);

	return IRQ_SET_MASK_OK;
}