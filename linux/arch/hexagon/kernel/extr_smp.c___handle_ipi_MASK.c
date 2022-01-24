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
struct ipi_data {int dummy; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
#define  IPI_CALL_FUNC 131 
#define  IPI_CPU_STOP 130 
#define  IPI_RESCHEDULE 129 
#define  IPI_TIMER 128 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(unsigned long *ops, struct ipi_data *ipi,
				int cpu)
{
	unsigned long msg = 0;
	do {
		msg = FUNC1(ops, BITS_PER_LONG, msg+1);

		switch (msg) {

		case IPI_TIMER:
			FUNC3();
			break;

		case IPI_CALL_FUNC:
			FUNC2();
			break;

		case IPI_CPU_STOP:
			/*
			 * call vmstop()
			 */
			FUNC0();
			break;

		case IPI_RESCHEDULE:
			FUNC4();
			break;
		}
	} while (msg < BITS_PER_LONG);
}