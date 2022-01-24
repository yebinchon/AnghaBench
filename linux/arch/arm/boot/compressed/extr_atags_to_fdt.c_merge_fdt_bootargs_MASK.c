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
 int COMMAND_LINE_SIZE ; 
 char* FUNC0 (void*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,char*,char*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(void *fdt, const char *fdt_cmdline)
{
	char cmdline[COMMAND_LINE_SIZE];
	const char *fdt_bootargs;
	char *ptr = cmdline;
	int len = 0;

	/* copy the fdt command line into the buffer */
	fdt_bootargs = FUNC0(fdt, "/chosen", "bootargs", &len);
	if (fdt_bootargs)
		if (len < COMMAND_LINE_SIZE) {
			FUNC1(ptr, fdt_bootargs, len);
			/* len is the length of the string
			 * including the NULL terminator */
			ptr += len - 1;
		}

	/* and append the ATAG_CMDLINE */
	if (fdt_cmdline) {
		len = FUNC3(fdt_cmdline);
		if (ptr - cmdline + len + 2 < COMMAND_LINE_SIZE) {
			*ptr++ = ' ';
			FUNC1(ptr, fdt_cmdline, len);
			ptr += len;
		}
	}
	*ptr = '\0';

	FUNC2(fdt, "/chosen", "bootargs", cmdline);
}