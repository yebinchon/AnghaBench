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
struct irq_chip {int dummy; } ;
struct mpic {scalar_t__ spurious_vec; scalar_t__* ipi_vecs; int flags; scalar_t__* timer_vecs; scalar_t__ num_sources; struct irq_chip hc_ht_irq; struct irq_chip hc_irq; struct irq_chip hc_tm; struct irq_chip hc_ipi; scalar_t__ protected; } ;
struct irq_domain {struct mpic* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  IRQ_TYPE_DEFAULT ; 
 int MPIC_NO_RESET ; 
 int MPIC_SECONDARY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct mpic*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 
 scalar_t__ FUNC6 (struct mpic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mpic*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct mpic*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mpic*,scalar_t__) ; 
 int FUNC10 (struct mpic*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct irq_domain *h, unsigned int virq,
			 irq_hw_number_t hw)
{
	struct mpic *mpic = h->host_data;
	struct irq_chip *chip;

	FUNC0("mpic: map virq %d, hwirq 0x%lx\n", virq, hw);

	if (hw == mpic->spurious_vec)
		return -EINVAL;
	if (mpic->protected && FUNC16(hw, mpic->protected)) {
		FUNC13("mpic: Mapping of source 0x%x failed, source protected by firmware !\n",
			(unsigned int)hw);
		return -EPERM;
	}

#ifdef CONFIG_SMP
	else if (hw >= mpic->ipi_vecs[0]) {
		WARN_ON(mpic->flags & MPIC_SECONDARY);

		DBG("mpic: mapping as IPI\n");
		irq_set_chip_data(virq, mpic);
		irq_set_chip_and_handler(virq, &mpic->hc_ipi,
					 handle_percpu_irq);
		return 0;
	}
#endif /* CONFIG_SMP */

	if (hw >= mpic->timer_vecs[0] && hw <= mpic->timer_vecs[7]) {
		FUNC1(mpic->flags & MPIC_SECONDARY);

		FUNC0("mpic: mapping as timer\n");
		FUNC3(virq, mpic);
		FUNC2(virq, &mpic->hc_tm,
					 handle_fasteoi_irq);
		return 0;
	}

	if (FUNC8(mpic, virq, hw))
		return 0;

	if (hw >= mpic->num_sources) {
		FUNC13("mpic: Mapping of source 0x%x failed, source out of range !\n",
			(unsigned int)hw);
		return -EINVAL;
	}

	FUNC9(mpic, hw);

	/* Default chip */
	chip = &mpic->hc_irq;

#ifdef CONFIG_MPIC_U3_HT_IRQS
	/* Check for HT interrupts, override vecpri */
	if (mpic_is_ht_interrupt(mpic, hw))
		chip = &mpic->hc_ht_irq;
#endif /* CONFIG_MPIC_U3_HT_IRQS */

	FUNC0("mpic: mapping to irq chip @%p\n", chip);

	FUNC3(virq, mpic);
	FUNC2(virq, chip, handle_fasteoi_irq);

	/* Set default irq type */
	FUNC4(virq, IRQ_TYPE_DEFAULT);

	/* If the MPIC was reset, then all vectors have already been
	 * initialized.  Otherwise, a per source lazy initialization
	 * is done here.
	 */
	if (!FUNC7(mpic, hw) && (mpic->flags & MPIC_NO_RESET)) {
		int cpu;

		FUNC14();
		cpu = FUNC10(mpic);
		FUNC15();

		FUNC12(virq, hw);
		FUNC11(virq, cpu);
		FUNC5(virq, 8);
	}

	return 0;
}