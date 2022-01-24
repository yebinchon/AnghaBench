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
struct irq_data {int dummy; } ;
struct core_chip_data {int bit; scalar_t__ desired_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct core_chip_data* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct irq_data *data = arg;
	struct core_chip_data *cd = FUNC1(data);
	unsigned int mask = 0x100 << cd->bit;

	/*
	 * Interrupts are already disabled, so these are atomic.
	 */
	if (cd->desired_en)
		FUNC2(mask);
	else
		FUNC0(mask);

}