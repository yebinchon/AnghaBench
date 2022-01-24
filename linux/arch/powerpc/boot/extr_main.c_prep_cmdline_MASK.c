#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
struct TYPE_2__ {int /*<<< orphan*/  (* edit_cmdline ) (char*,int,unsigned int) ;} ;

/* Variables and functions */
 int BOOT_COMMAND_LINE_SIZE ; 
 char* cmdline ; 
 TYPE_1__ console_ops ; 
 int FUNC0 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int) ; 

__attribute__((used)) static void FUNC4(void *chosen)
{
	unsigned int getline_timeout = 5000;
	int v;
	int n;

	/* Wait-for-input time */
	n = FUNC0(chosen, "linux,cmdline-timeout", &v, sizeof(v));
	if (n == sizeof(v))
		getline_timeout = v;

	if (cmdline[0] == '\0')
		FUNC0(chosen, "bootargs", cmdline, BOOT_COMMAND_LINE_SIZE-1);

	FUNC1("\n\rLinux/PowerPC load: %s", cmdline);

	/* If possible, edit the command line */
	if (console_ops.edit_cmdline && getline_timeout)
		console_ops.edit_cmdline(cmdline, BOOT_COMMAND_LINE_SIZE, getline_timeout);

	FUNC1("\n\r");

	/* Put the command line back into the devtree for the kernel */
	FUNC2(chosen, "bootargs", cmdline);
}