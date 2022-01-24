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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  stdma_isr ; 
 void* stdma_isr_data ; 
 int stdma_locked ; 

int FUNC2(irq_handler_t handler, void *data)
{
	unsigned long flags;

	FUNC1(flags);
	if (stdma_locked) {
		FUNC0(flags);
		return 0;
	}

	stdma_locked   = 1;
	stdma_isr      = handler;
	stdma_isr_data = data;
	FUNC0(flags);
	return 1;
}