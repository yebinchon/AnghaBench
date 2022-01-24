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
struct megamod_pic {scalar_t__* output_to_irq; } ;
struct irq_domain {struct megamod_pic* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int NR_MUX_OUTPUTS ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct megamod_pic*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  megamod_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
		       irq_hw_number_t hw)
{
	struct megamod_pic *pic = h->host_data;
	int i;

	/* We shouldn't see a hwirq which is muxed to core controller */
	for (i = 0; i < NR_MUX_OUTPUTS; i++)
		if (pic->output_to_irq[i] == hw)
			return -1;

	FUNC1(virq, pic);
	FUNC0(virq, &megamod_chip, handle_level_irq);

	/* Set default irq type */
	FUNC2(virq, IRQ_TYPE_NONE);

	return 0;
}