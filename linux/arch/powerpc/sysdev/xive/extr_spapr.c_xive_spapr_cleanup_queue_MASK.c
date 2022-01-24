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
typedef  size_t u8 ;
struct xive_q {int /*<<< orphan*/ * qpage; } ;
struct xive_cpu {struct xive_q* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 long FUNC2 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,long,int,size_t) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xive_queue_shift ; 

__attribute__((used)) static void FUNC5(unsigned int cpu, struct xive_cpu *xc,
				  u8 prio)
{
	struct xive_q *q = &xc->queue[prio];
	unsigned int alloc_order;
	long rc;
	int hw_cpu = FUNC1(cpu);

	rc = FUNC2(0, hw_cpu, prio, 0, 0);
	if (rc)
		FUNC3("Error %ld setting queue for CPU %d prio %d\n", rc,
		       hw_cpu, prio);

	alloc_order = FUNC4(xive_queue_shift);
	FUNC0((unsigned long)q->qpage, alloc_order);
	q->qpage = NULL;
}