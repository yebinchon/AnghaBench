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
typedef  int /*<<< orphan*/  u32 ;
struct irq_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_ANY ; 
 int EINVAL ; 
 int /*<<< orphan*/  acpi_gsi_domain_id ; 
 unsigned int FUNC0 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(u32 gsi, unsigned int *irq)
{
	struct irq_domain *d = FUNC1(acpi_gsi_domain_id,
							DOMAIN_BUS_ANY);

	*irq = FUNC0(d, gsi);
	/*
	 * *irq == 0 means no mapping, that should
	 * be reported as a failure
	 */
	return (*irq > 0) ? 0 : -EINVAL;
}