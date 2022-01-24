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
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct irq_domain* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,struct device*) ; 

void FUNC5(struct device *dev)
{
	struct irq_domain *msi_domain;

	msi_domain = FUNC0(dev);
	if (!msi_domain)
		return;

	FUNC4(msi_domain, dev);

	if (FUNC3(FUNC1(dev)))
		return;

	FUNC2(dev);
}