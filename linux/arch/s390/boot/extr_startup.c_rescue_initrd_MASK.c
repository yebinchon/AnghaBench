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
 int /*<<< orphan*/  CONFIG_BLK_DEV_INITRD ; 
 int /*<<< orphan*/  INITRD_SIZE ; 
 unsigned long INITRD_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned long addr)
{
	if (!FUNC0(CONFIG_BLK_DEV_INITRD))
		return;
	if (!INITRD_START || !INITRD_SIZE)
		return;
	if (addr <= INITRD_START)
		return;
	FUNC1((void *)addr, (void *)INITRD_START, INITRD_SIZE);
	INITRD_START = addr;
}