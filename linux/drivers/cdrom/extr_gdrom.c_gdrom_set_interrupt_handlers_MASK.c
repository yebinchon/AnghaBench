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
 int /*<<< orphan*/  HW_EVENT_GDROM_CMD ; 
 int /*<<< orphan*/  HW_EVENT_GDROM_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gd ; 
 int /*<<< orphan*/  gdrom_command_interrupt ; 
 int /*<<< orphan*/  gdrom_dma_interrupt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	int err;

	err = FUNC1(HW_EVENT_GDROM_CMD, gdrom_command_interrupt,
		0, "gdrom_command", &gd);
	if (err)
		return err;
	err = FUNC1(HW_EVENT_GDROM_DMA, gdrom_dma_interrupt,
		0, "gdrom_dma", &gd);
	if (err)
		FUNC0(HW_EVENT_GDROM_CMD, &gd);
	return err;
}