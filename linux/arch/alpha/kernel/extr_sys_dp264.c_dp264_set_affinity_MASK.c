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
 int /*<<< orphan*/  cached_irq_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cpumask const) ; 
 int /*<<< orphan*/  dp264_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct irq_data *d, const struct cpumask *affinity,
		   bool force)
{
	FUNC1(&dp264_irq_lock);
	FUNC0(d->irq, *affinity);
	FUNC3(cached_irq_mask);
	FUNC2(&dp264_irq_lock);

	return 0;
}