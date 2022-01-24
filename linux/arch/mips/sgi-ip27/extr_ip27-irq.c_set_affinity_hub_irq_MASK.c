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
struct hub_irq_data {int /*<<< orphan*/  cpu; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 struct hub_irq_data* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hub_irq_data*,struct cpumask const*) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, const struct cpumask *mask,
				bool force)
{
	struct hub_irq_data *hd = FUNC3(d);

	if (!hd)
		return -EINVAL;

	if (FUNC5(d))
		FUNC1(d);

	FUNC6(hd, mask);

	if (FUNC5(d))
		FUNC2(d);

	FUNC4(d, FUNC0(hd->cpu));

	return 0;
}