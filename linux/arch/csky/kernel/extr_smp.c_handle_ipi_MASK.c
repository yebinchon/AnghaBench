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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IPI_CALL_FUNC ; 
 unsigned long IPI_MAX ; 
 int IPI_RESCHEDULE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ipi_data ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	while (true) {
		unsigned long ops;

		ops = FUNC4(&FUNC3(&ipi_data)->bits, 0);
		if (ops == 0)
			return IRQ_HANDLED;

		if (ops & (1 << IPI_RESCHEDULE))
			FUNC2();

		if (ops & (1 << IPI_CALL_FUNC))
			FUNC1();

		FUNC0((ops >> IPI_MAX) != 0);
	}

	return IRQ_HANDLED;
}