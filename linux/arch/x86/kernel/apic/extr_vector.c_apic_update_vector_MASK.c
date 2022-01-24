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
struct irq_desc {int dummy; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct apic_chip_data {unsigned int vector; unsigned int cpu; unsigned int prev_vector; int move_in_progress; unsigned int prev_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 unsigned int MANAGED_IRQ_SHUTDOWN_VECTOR ; 
 struct apic_chip_data* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 struct irq_desc* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 int FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct irq_desc** FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  vector_irq ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static void FUNC10(struct irq_data *irqd, unsigned int newvec,
			       unsigned int newcpu)
{
	struct apic_chip_data *apicd = FUNC2(irqd);
	struct irq_desc *desc = FUNC4(irqd);
	bool managed = FUNC6(irqd);

	FUNC7(&vector_lock);

	FUNC9(irqd->irq, newvec, newcpu, apicd->vector,
			    apicd->cpu);

	/*
	 * If there is no vector associated or if the associated vector is
	 * the shutdown vector, which is associated to make PCI/MSI
	 * shutdown mode work, then there is nothing to release. Clear out
	 * prev_vector for this and the offlined target case.
	 */
	apicd->prev_vector = 0;
	if (!apicd->vector || apicd->vector == MANAGED_IRQ_SHUTDOWN_VECTOR)
		goto setnew;
	/*
	 * If the target CPU of the previous vector is online, then mark
	 * the vector as move in progress and store it for cleanup when the
	 * first interrupt on the new vector arrives. If the target CPU is
	 * offline then the regular release mechanism via the cleanup
	 * vector is not possible and the vector can be immediately freed
	 * in the underlying matrix allocator.
	 */
	if (FUNC3(apicd->cpu)) {
		apicd->move_in_progress = true;
		apicd->prev_vector = apicd->vector;
		apicd->prev_cpu = apicd->cpu;
	} else {
		FUNC5(vector_matrix, apicd->cpu, apicd->vector,
				managed);
	}

setnew:
	apicd->vector = newvec;
	apicd->cpu = newcpu;
	FUNC0(!FUNC1(FUNC8(vector_irq, newcpu)[newvec]));
	FUNC8(vector_irq, newcpu)[newvec] = desc;
}