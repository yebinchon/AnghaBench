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
 scalar_t__ JAZZ_R4030_CHNL_ENABLE ; 
 int R4030_ADDR_INTR ; 
 int R4030_CHNL_ENABLE ; 
 int R4030_MEM_INTR ; 
 int R4030_TC_INTR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ vdma_debug ; 

void FUNC3(int channel)
{
	int status;

	if (vdma_debug)
		FUNC0("vdma_enable: channel %d\n", channel);

	/*
	 * Check error conditions first
	 */
	status = FUNC1(JAZZ_R4030_CHNL_ENABLE + (channel << 5));
	if (status & 0x400)
		FUNC0("VDMA: Channel %d: Address error!\n", channel);
	if (status & 0x200)
		FUNC0("VDMA: Channel %d: Memory error!\n", channel);

	/*
	 * Clear all interrupt flags
	 */
	FUNC2(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
			  FUNC1(JAZZ_R4030_CHNL_ENABLE +
					   (channel << 5)) | R4030_TC_INTR
			  | R4030_MEM_INTR | R4030_ADDR_INTR);

	/*
	 * Enable the desired channel
	 */
	FUNC2(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
			  FUNC1(JAZZ_R4030_CHNL_ENABLE +
					   (channel << 5)) |
			  R4030_CHNL_ENABLE);
}