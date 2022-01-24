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

/* Variables and functions */
 int DMA_2W_BURST ; 
 int DMA_ETOP_ENDIANNESS ; 
 int DMA_PDEN ; 
#define  DMA_PORT_DEU 129 
#define  DMA_PORT_ETOP 128 
 int /*<<< orphan*/  LTQ_DMA_PCTRL ; 
 int /*<<< orphan*/  LTQ_DMA_PS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC2(int p)
{
	FUNC0(p, LTQ_DMA_PS);
	switch (p) {
	case DMA_PORT_ETOP:
		/*
		 * Tell the DMA engine to swap the endianness of data frames and
		 * drop packets if the channel arbitration fails.
		 */
		FUNC1(0, DMA_ETOP_ENDIANNESS | DMA_PDEN,
			LTQ_DMA_PCTRL);
		break;

	case DMA_PORT_DEU:
		FUNC0((DMA_2W_BURST << 4) | (DMA_2W_BURST << 2),
			LTQ_DMA_PCTRL);
		break;

	default:
		break;
	}
}