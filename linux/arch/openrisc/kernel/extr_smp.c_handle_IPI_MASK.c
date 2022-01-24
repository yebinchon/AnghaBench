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

/* Variables and functions */
#define  IPI_CALL_FUNC 131 
#define  IPI_CALL_FUNC_SINGLE 130 
#define  IPI_RESCHEDULE 129 
#define  IPI_WAKEUP 128 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 () ; 

void FUNC5(unsigned int ipi_msg)
{
	unsigned int cpu = FUNC4();

	switch (ipi_msg) {
	case IPI_WAKEUP:
		break;

	case IPI_RESCHEDULE:
		FUNC3();
		break;

	case IPI_CALL_FUNC:
		FUNC1();
		break;

	case IPI_CALL_FUNC_SINGLE:
		FUNC2();
		break;

	default:
		FUNC0(1, "CPU%u: Unknown IPI message 0x%x\n", cpu, ipi_msg);
		break;
	}
}