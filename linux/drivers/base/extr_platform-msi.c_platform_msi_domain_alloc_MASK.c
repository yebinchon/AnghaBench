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
struct platform_msi_priv_data {int /*<<< orphan*/  arg; int /*<<< orphan*/  dev; } ;
struct irq_domain {int /*<<< orphan*/  parent; struct platform_msi_priv_data* host_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int,struct platform_msi_priv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 

int FUNC3(struct irq_domain *domain, unsigned int virq,
			      unsigned int nr_irqs)
{
	struct platform_msi_priv_data *data = domain->host_data;
	int err;

	err = FUNC1(data->dev, virq, nr_irqs, data);
	if (err)
		return err;

	err = FUNC0(domain->parent, data->dev,
				       virq, nr_irqs, &data->arg);
	if (err)
		FUNC2(domain, virq, nr_irqs);

	return err;
}