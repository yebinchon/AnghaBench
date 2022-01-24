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
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  i8259_pic ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int virq,
			  irq_hw_number_t hw)
{
	FUNC2("i8259_host_map(%d, 0x%lx)\n", virq, hw);

	/* We block the internal cascade */
	if (hw == 2)
		FUNC1(virq, IRQ_NOREQUEST);

	/* We use the level handler only for now, we might want to
	 * be more cautious here but that works for now
	 */
	FUNC1(virq, IRQ_LEVEL);
	FUNC0(virq, &i8259_pic, handle_level_irq);
	return 0;
}