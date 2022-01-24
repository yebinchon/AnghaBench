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
struct cpumask {int dummy; } ;
struct apic_chip_data {int has_reserved; unsigned int cpu; int vector; int /*<<< orphan*/  clist; scalar_t__ move_in_progress; } ;

/* Variables and functions */
 int EBUSY ; 
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cpumask const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  vector_matrix ; 

__attribute__((used)) static int
FUNC9(struct irq_data *irqd, const struct cpumask *dest)
{
	struct apic_chip_data *apicd = FUNC0(irqd);
	bool resvd = apicd->has_reserved;
	unsigned int cpu = apicd->cpu;
	int vector = apicd->vector;

	FUNC7(&vector_lock);

	/*
	 * If the current target CPU is online and in the new requested
	 * affinity mask, there is no point in moving the interrupt from
	 * one CPU to another.
	 */
	if (vector && FUNC3(cpu) && FUNC4(cpu, dest))
		return 0;

	/*
	 * Careful here. @apicd might either have move_in_progress set or
	 * be enqueued for cleanup. Assigning a new vector would either
	 * leave a stale vector on some CPU around or in case of a pending
	 * cleanup corrupt the hlist.
	 */
	if (apicd->move_in_progress || !FUNC5(&apicd->clist))
		return -EBUSY;

	vector = FUNC6(vector_matrix, dest, resvd, &cpu);
	FUNC8(irqd->irq, vector, resvd, vector);
	if (vector < 0)
		return vector;
	FUNC2(irqd, vector, cpu);
	FUNC1(irqd, vector, cpu);

	return 0;
}