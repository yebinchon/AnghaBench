#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  soft; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
struct TYPE_7__ {TYPE_2__ fpu; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;

/* Variables and functions */
 unsigned long X86_CR0_EM ; 
 unsigned long X86_CR0_TS ; 
 unsigned long X86_CR4_OSFXSR ; 
 unsigned long X86_CR4_OSXMMEXCPT ; 
 int /*<<< orphan*/  X86_FEATURE_FPU ; 
 int /*<<< orphan*/  X86_FEATURE_FXSR ; 
 int /*<<< orphan*/  X86_FEATURE_XMM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long cr0;
	unsigned long cr4_mask = 0;

	if (FUNC0(X86_FEATURE_FXSR))
		cr4_mask |= X86_CR4_OSFXSR;
	if (FUNC0(X86_FEATURE_XMM))
		cr4_mask |= X86_CR4_OSXMMEXCPT;
	if (cr4_mask)
		FUNC1(cr4_mask);

	cr0 = FUNC3();
	cr0 &= ~(X86_CR0_TS|X86_CR0_EM); /* clear TS and EM */
	if (!FUNC0(X86_FEATURE_FPU))
		cr0 |= X86_CR0_EM;
	FUNC4(cr0);

	/* Flush out any pending x87 state: */
#ifdef CONFIG_MATH_EMULATION
	if (!boot_cpu_has(X86_FEATURE_FPU))
		fpstate_init_soft(&current->thread.fpu.state.soft);
	else
#endif
		asm volatile ("fninit");
}