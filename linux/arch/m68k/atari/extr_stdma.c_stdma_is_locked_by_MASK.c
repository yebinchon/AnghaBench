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
typedef  scalar_t__ irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ stdma_isr ; 
 scalar_t__ stdma_locked ; 

int FUNC2(irq_handler_t handler)
{
	unsigned long flags;
	int result;

	FUNC1(flags);
	result = stdma_locked && (stdma_isr == handler);
	FUNC0(flags);

	return result;
}