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
struct irq_alloc_info {int ioapic_pin; int /*<<< orphan*/  ioapic_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC0 (struct irq_domain*,int /*<<< orphan*/ ,int,int,struct irq_alloc_info*) ; 
 int /*<<< orphan*/  ioapic_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct irq_alloc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int ioapic, int pin)
{
	int irq = -1;
	struct irq_domain *domain = FUNC2(ioapic);

	if (domain) {
		struct irq_alloc_info info;

		FUNC1(&info, NUMA_NO_NODE, 0, 0);
		info.ioapic_id = FUNC3(ioapic);
		info.ioapic_pin = pin;
		FUNC4(&ioapic_mutex);
		irq = FUNC0(domain, 0, ioapic, pin, &info);
		FUNC5(&ioapic_mutex);
	}

	return irq;
}