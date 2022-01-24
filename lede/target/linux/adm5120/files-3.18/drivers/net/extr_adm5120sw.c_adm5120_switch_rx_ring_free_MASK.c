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
 int /*<<< orphan*/  RX_DESCS_SIZE ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ rxl_descs ; 
 int /*<<< orphan*/  rxl_descs_dma ; 
 scalar_t__* rxl_skbuff ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	if (rxl_skbuff) {
		for (i = 0; i < RX_RING_SIZE; i++)
			if (rxl_skbuff[i])
				FUNC2(rxl_skbuff[i]);
		FUNC1(rxl_skbuff);
	}

	if (rxl_descs)
		FUNC0(NULL, RX_DESCS_SIZE, rxl_descs,
			rxl_descs_dma);
}