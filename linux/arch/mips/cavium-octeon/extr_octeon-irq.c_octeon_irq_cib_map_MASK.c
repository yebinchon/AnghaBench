#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct octeon_irq_cib_host_data {scalar_t__ max_bits; } ;
struct octeon_irq_cib_chip_data {scalar_t__ bit; struct octeon_irq_cib_host_data* host_data; } ;
struct irq_domain {struct octeon_irq_cib_host_data* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 TYPE_1__* FUNC0 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct octeon_irq_cib_chip_data*) ; 
 struct octeon_irq_cib_chip_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octeon_irq_chip_cib ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *d,
			      unsigned int virq, irq_hw_number_t hw)
{
	struct octeon_irq_cib_host_data *host_data = d->host_data;
	struct octeon_irq_cib_chip_data *cd;

	if (hw >= host_data->max_bits) {
		FUNC4("ERROR: %s mapping %u is to big!\n",
		       FUNC0(d)->name, (unsigned)hw);
		return -EINVAL;
	}

	cd = FUNC3(sizeof(*cd), GFP_KERNEL);
	cd->host_data = host_data;
	cd->bit = hw;

	FUNC1(virq, &octeon_irq_chip_cib,
				 handle_simple_irq);
	FUNC2(virq, cd);
	return 0;
}