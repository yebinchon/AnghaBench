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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  stdma_wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(irq_handler_t handler, void *data)
{
	/* Since the DMA is used for file system purposes, we
	 have to sleep uninterruptible (there may be locked
	 buffers) */
	FUNC1(stdma_wait, FUNC0(handler, data));
}