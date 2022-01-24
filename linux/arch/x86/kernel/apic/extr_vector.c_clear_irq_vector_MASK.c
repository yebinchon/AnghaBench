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
struct irq_data {int /*<<< orphan*/  irq; } ;
struct apic_chip_data {unsigned int vector; unsigned int prev_vector; int /*<<< orphan*/  clist; scalar_t__ move_in_progress; int /*<<< orphan*/  prev_cpu; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  VECTOR_SHUTDOWN ; 
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vector_irq ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static void FUNC7(struct irq_data *irqd)
{
	struct apic_chip_data *apicd = FUNC0(irqd);
	bool managed = FUNC3(irqd);
	unsigned int vector = apicd->vector;

	FUNC4(&vector_lock);

	if (!vector)
		return;

	FUNC6(irqd->irq, vector, apicd->cpu, apicd->prev_vector,
			   apicd->prev_cpu);

	FUNC5(vector_irq, apicd->cpu)[vector] = VECTOR_SHUTDOWN;
	FUNC2(vector_matrix, apicd->cpu, vector, managed);
	apicd->vector = 0;

	/* Clean up move in progress */
	vector = apicd->prev_vector;
	if (!vector)
		return;

	FUNC5(vector_irq, apicd->prev_cpu)[vector] = VECTOR_SHUTDOWN;
	FUNC2(vector_matrix, apicd->prev_cpu, vector, managed);
	apicd->prev_vector = 0;
	apicd->move_in_progress = 0;
	FUNC1(&apicd->clist);
}