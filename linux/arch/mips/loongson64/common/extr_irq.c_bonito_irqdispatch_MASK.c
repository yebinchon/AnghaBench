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
typedef  int u32 ;

/* Variables and functions */
 int LOONGSON_INTEN ; 
 int LOONGSON_INTISR ; 
 scalar_t__ LOONGSON_IRQ_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void)
{
	u32 int_status;
	int i;

	/* workaround the IO dma problem: let cpu looping to allow DMA finish */
	int_status = LOONGSON_INTISR;
	while (int_status & (1 << 10)) {
		FUNC2(1);
		int_status = LOONGSON_INTISR;
	}

	/* Get pending sources, masked by current enables */
	int_status = LOONGSON_INTISR & LOONGSON_INTEN;

	if (int_status) {
		i = FUNC0(int_status);
		FUNC1(LOONGSON_IRQ_BASE + i);
	}
}