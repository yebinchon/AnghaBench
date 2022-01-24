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
struct irq_domain {struct cplds* host_data; } ;
struct cplds {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  cplds_irq_chip ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct cplds*) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, unsigned int irq,
				   irq_hw_number_t hwirq)
{
	struct cplds *fpga = d->host_data;

	FUNC0(irq, &cplds_irq_chip, handle_level_irq);
	FUNC1(irq, fpga);

	return 0;
}