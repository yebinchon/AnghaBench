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
struct TYPE_2__ {unsigned long bits; unsigned long* stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IPI_CALL_FUNC ; 
 int IPI_CPU_STOP ; 
 unsigned long IPI_MAX ; 
 int IPI_RESCHEDULE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* ipi_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 () ; 
 unsigned long FUNC7 (unsigned long*,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	unsigned long *pending_ipis = &ipi_data[FUNC6()].bits;
	unsigned long *stats = ipi_data[FUNC6()].stats;

	FUNC1();

	while (true) {
		unsigned long ops;

		/* Order bit clearing and data access. */
		FUNC4();

		ops = FUNC7(pending_ipis, 0);
		if (ops == 0)
			return;

		if (ops & (1 << IPI_RESCHEDULE)) {
			stats[IPI_RESCHEDULE]++;
			FUNC5();
		}

		if (ops & (1 << IPI_CALL_FUNC)) {
			stats[IPI_CALL_FUNC]++;
			FUNC2();
		}

		if (ops & (1 << IPI_CPU_STOP)) {
			stats[IPI_CPU_STOP]++;
			FUNC3();
		}

		FUNC0((ops >> IPI_MAX) != 0);

		/* Order data access and bit testing. */
		FUNC4();
	}
}