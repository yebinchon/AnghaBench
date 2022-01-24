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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  vector_searchmask ; 

__attribute__((used)) static int FUNC4(struct irq_data *irqd, const struct cpumask *dest)
{
	unsigned long flags;
	int ret;

	FUNC2(&vector_lock, flags);
	FUNC1(vector_searchmask, dest, cpu_online_mask);
	ret = FUNC0(irqd, vector_searchmask);
	FUNC3(&vector_lock, flags);
	return ret;
}