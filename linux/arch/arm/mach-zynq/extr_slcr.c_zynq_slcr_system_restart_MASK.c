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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLCR_PS_RST_CTRL_OFFSET ; 
 int /*<<< orphan*/  SLCR_REBOOT_STATUS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC2(struct notifier_block *nb,
			     unsigned long action, void *data)
{
	u32 reboot;

	/*
	 * Clear 0x0F000000 bits of reboot status register to workaround
	 * the FSBL not loading the bitstream after soft-reboot
	 * This is a temporary solution until we know more.
	 */
	FUNC0(&reboot, SLCR_REBOOT_STATUS_OFFSET);
	FUNC1(reboot & 0xF0FFFFFF, SLCR_REBOOT_STATUS_OFFSET);
	FUNC1(1, SLCR_PS_RST_CTRL_OFFSET);
	return 0;
}