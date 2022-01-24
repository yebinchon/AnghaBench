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
typedef  int /*<<< orphan*/  u32 ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  cookie_handler_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct irq_chip*) ; 

__attribute__((used)) static unsigned int FUNC3(u32 devhandle, unsigned int devino,
				     struct irq_chip *chip)
{
	unsigned long hv_error;
	unsigned int irq;

	irq = FUNC2(devhandle, devino, cookie_handler_data, chip);

	hv_error = FUNC0(irq, devhandle, devino);
	if (hv_error) {
		FUNC1(irq);
		irq = 0;
	}

	return irq;
}