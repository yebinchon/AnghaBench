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
struct irq_domain {struct fsl_msi* host_data; } ;
struct irq_chip {int dummy; } ;
struct fsl_msi {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 struct irq_chip fsl_msi_chip ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct fsl_msi*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
				irq_hw_number_t hw)
{
	struct fsl_msi *msi_data = h->host_data;
	struct irq_chip *chip = &fsl_msi_chip;

	FUNC2(virq, IRQ_TYPE_EDGE_FALLING);

	FUNC1(virq, msi_data);
	FUNC0(virq, chip, handle_edge_irq);

	return 0;
}