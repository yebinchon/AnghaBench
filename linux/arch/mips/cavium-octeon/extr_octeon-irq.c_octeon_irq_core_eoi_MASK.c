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
struct octeon_core_chip_data {int bit; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct octeon_core_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct octeon_core_chip_data *cd = FUNC0(data);

	/*
	 * We don't need to disable IRQs to make these atomic since
	 * they are already disabled earlier in the low level
	 * interrupt code.
	 */
	FUNC1(0x100 << cd->bit);
}