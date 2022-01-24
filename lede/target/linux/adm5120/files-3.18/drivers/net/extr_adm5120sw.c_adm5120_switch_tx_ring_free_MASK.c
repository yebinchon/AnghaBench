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
 int /*<<< orphan*/  TX_DESCS_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ txl_descs ; 
 int /*<<< orphan*/  txl_descs_dma ; 
 scalar_t__* txl_skbuff ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	if (txl_skbuff) {
		for (i = 0; i < TX_RING_SIZE; i++)
			if (txl_skbuff[i])
				FUNC2(txl_skbuff[i]);
		FUNC1(txl_skbuff);
	}

	if (txl_descs)
		FUNC0(NULL, TX_DESCS_SIZE, txl_descs,
			txl_descs_dma);
}