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
struct octeon_ciu_chip_data {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct octeon_ciu_chip_data* FUNC0 (struct irq_data*) ; 
 struct irq_data* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_ciu_chip_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_domain *d, unsigned int irq)
{
	struct irq_data *data = FUNC1(irq);
	struct octeon_ciu_chip_data *cd = FUNC0(data);

	FUNC2(irq, NULL);
	FUNC3(cd);
}