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
 int /*<<< orphan*/  LINUX_REBOOT_CMD_RESTART ; 
 int /*<<< orphan*/  LINUX_REBOOT_MAGIC1 ; 
 int /*<<< orphan*/  LINUX_REBOOT_MAGIC2 ; 
 int /*<<< orphan*/  SYS_reboot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1(stderr, "Rebooting ...\n");
	FUNC0(stderr);

	/* try regular reboot method first */
	FUNC4("/sbin/reboot");
	FUNC2(2);

	/* if we're still alive at this point, force the kernel to reboot */
	FUNC3(SYS_reboot,LINUX_REBOOT_MAGIC1,LINUX_REBOOT_MAGIC2,LINUX_REBOOT_CMD_RESTART,NULL);
}