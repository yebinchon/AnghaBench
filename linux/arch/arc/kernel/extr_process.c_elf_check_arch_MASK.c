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
struct elf32_hdr {scalar_t__ e_machine; unsigned int e_flags; } ;

/* Variables and functions */
 unsigned int EF_ARC_OSABI_CURRENT ; 
 unsigned int EF_ARC_OSABI_MSK ; 
 scalar_t__ EM_ARC_INUSE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3(const struct elf32_hdr *x)
{
	unsigned int eflags;

	if (x->e_machine != EM_ARC_INUSE) {
		FUNC2("ELF not built for %s ISA\n",
			FUNC1() ? "ARCompact":"ARCv2");
		return 0;
	}

	eflags = x->e_flags;
	if ((eflags & EF_ARC_OSABI_MSK) != EF_ARC_OSABI_CURRENT) {
		FUNC2("ABI mismatch - you need newer toolchain\n");
		FUNC0(SIGSEGV);
		return 0;
	}

	return 1;
}