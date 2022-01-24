#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_IPI_SMP_FUNCTION ; 
 int /*<<< orphan*/  IRQ_IPI_SMP_RESCHEDULE ; 
 unsigned int SMP_CALL_FUNCTION ; 
 unsigned int SMP_RESCHEDULE_YOURSELF ; 
 unsigned int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(int logical_cpu, unsigned int action)
{
	unsigned int hwtid;
	uint64_t picbase;

	/* node id is part of hwtid, and needed for send_ipi */
	hwtid = FUNC0(logical_cpu);
	picbase = FUNC1(FUNC2(hwtid))->picbase;

	if (action & SMP_CALL_FUNCTION)
		FUNC3(picbase, hwtid, IRQ_IPI_SMP_FUNCTION, 0);
	if (action & SMP_RESCHEDULE_YOURSELF)
		FUNC3(picbase, hwtid, IRQ_IPI_SMP_RESCHEDULE, 0);
}