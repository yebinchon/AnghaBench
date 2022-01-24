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
struct elf32_hdr {unsigned int e_flags; } ;
struct TYPE_2__ {unsigned int personality; } ;

/* Variables and functions */
 unsigned int ADDR_LIMIT_32BIT ; 
 unsigned int EF_ARM_APCS_26 ; 
 unsigned int EF_ARM_EABI_MASK ; 
 unsigned int EF_ARM_EABI_UNKNOWN ; 
 unsigned int EF_ARM_SOFT_FLOAT ; 
 int HWCAP_IWMMXT ; 
 unsigned int PER_LINUX ; 
 unsigned int PER_MASK ; 
 int /*<<< orphan*/  TIF_USING_IWMMXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int elf_hwcap ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct elf32_hdr *x)
{
	unsigned int eflags = x->e_flags;
	unsigned int personality = current->personality & ~PER_MASK;

	/*
	 * We only support Linux ELF executables, so always set the
	 * personality to LINUX.
	 */
	personality |= PER_LINUX;

	/*
	 * APCS-26 is only valid for OABI executables
	 */
	if ((eflags & EF_ARM_EABI_MASK) == EF_ARM_EABI_UNKNOWN &&
	    (eflags & EF_ARM_APCS_26))
		personality &= ~ADDR_LIMIT_32BIT;
	else
		personality |= ADDR_LIMIT_32BIT;

	FUNC1(personality);

	/*
	 * Since the FPA coprocessor uses CP1 and CP2, and iWMMXt uses CP0
	 * and CP1, we only enable access to the iWMMXt coprocessor if the
	 * binary is EABI or softfloat (and thus, guaranteed not to use
	 * FPA instructions.)
	 */
	if (elf_hwcap & HWCAP_IWMMXT &&
	    eflags & (EF_ARM_EABI_MASK | EF_ARM_SOFT_FLOAT)) {
		FUNC2(TIF_USING_IWMMXT);
	} else {
		FUNC0(TIF_USING_IWMMXT);
	}
}