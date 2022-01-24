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
typedef  unsigned long long uint64_t ;
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 unsigned long long SZ_64K ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int FUNC3 (char*,char*,unsigned long long*) ; 
 int FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(int argc, char *argv[])
{
	unsigned long long vmlinux_size, vmlinux_load_addr, vmlinuz_load_addr;
	struct stat sb;

	if (argc != 3) {
		FUNC0(stderr, "Usage: %s <pathname> <vmlinux_load_addr>\n",
				argv[0]);
		return EXIT_FAILURE;
	}

	if (FUNC4(argv[1], &sb) == -1) {
		FUNC1("stat");
		return EXIT_FAILURE;
	}

	/* Convert hex characters to dec number */
	errno = 0;
	if (FUNC3(argv[2], "%llx", &vmlinux_load_addr) != 1) {
		if (errno != 0)
			FUNC1("sscanf");
		else
			FUNC0(stderr, "No matching characters\n");

		return EXIT_FAILURE;
	}

	vmlinux_size = (uint64_t)sb.st_size;
	vmlinuz_load_addr = vmlinux_load_addr + vmlinux_size;

	/*
	 * Align with 64KB: KEXEC needs load sections to be aligned to PAGE_SIZE,
	 * which may be as large as 64KB depending on the kernel configuration.
	 */

	vmlinuz_load_addr += (SZ_64K - vmlinux_size % SZ_64K);

	FUNC2("0x%llx\n", vmlinuz_load_addr);

	return EXIT_SUCCESS;
}