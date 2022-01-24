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
struct pt_regs {unsigned long ARM_cpsr; int /*<<< orphan*/  ARM_r0; int /*<<< orphan*/  ARM_r1; int /*<<< orphan*/  ARM_r2; int /*<<< orphan*/  ARM_r3; int /*<<< orphan*/  ARM_r4; int /*<<< orphan*/  ARM_r5; int /*<<< orphan*/  ARM_r6; int /*<<< orphan*/  ARM_r7; int /*<<< orphan*/  ARM_r8; int /*<<< orphan*/  ARM_r9; int /*<<< orphan*/  ARM_r10; int /*<<< orphan*/  ARM_fp; int /*<<< orphan*/  ARM_ip; int /*<<< orphan*/  ARM_sp; scalar_t__ ARM_lr; int /*<<< orphan*/  ARM_pc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {unsigned int dacr; unsigned int addr_limit; } ;

/* Variables and functions */
 unsigned int DACR_UACCESS_ENABLE ; 
 int /*<<< orphan*/  DOMAIN_NOACCESS ; 
 int /*<<< orphan*/  DOMAIN_USER ; 
 unsigned int KERNEL_DS ; 
 int /*<<< orphan*/  KERN_DEFAULT ; 
 unsigned long PSR_C_BIT ; 
 unsigned long PSR_N_BIT ; 
 unsigned long PSR_V_BIT ; 
 unsigned long PSR_Z_BIT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 
 size_t FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/ * isa_modes ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 size_t FUNC9 (struct pt_regs*) ; 
 int /*<<< orphan*/ * processor_modes ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC12 (struct pt_regs*) ; 
 scalar_t__ FUNC13 (struct pt_regs*) ; 

void FUNC14(struct pt_regs *regs)
{
	unsigned long flags;
	char buf[64];
#ifndef CONFIG_CPU_V7M
	unsigned int domain, fs;
#ifdef CONFIG_CPU_SW_DOMAIN_PAN
	/*
	 * Get the domain register for the parent context. In user
	 * mode, we don't save the DACR, so lets use what it should
	 * be. For other modes, we place it after the pt_regs struct.
	 */
	if (user_mode(regs)) {
		domain = DACR_UACCESS_ENABLE;
		fs = get_fs();
	} else {
		domain = to_svc_pt_regs(regs)->dacr;
		fs = to_svc_pt_regs(regs)->addr_limit;
	}
#else
	domain = FUNC3();
	fs = FUNC4();
#endif
#endif

	FUNC10(KERN_DEFAULT);

	FUNC8("PC is at %pS\n", (void *)FUNC5(regs));
	FUNC8("LR is at %pS\n", (void *)regs->ARM_lr);
	FUNC8("pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\n",
	       regs->ARM_pc, regs->ARM_lr, regs->ARM_cpsr);
	FUNC8("sp : %08lx  ip : %08lx  fp : %08lx\n",
	       regs->ARM_sp, regs->ARM_ip, regs->ARM_fp);
	FUNC8("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
		regs->ARM_r10, regs->ARM_r9,
		regs->ARM_r8);
	FUNC8("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
		regs->ARM_r7, regs->ARM_r6,
		regs->ARM_r5, regs->ARM_r4);
	FUNC8("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
		regs->ARM_r3, regs->ARM_r2,
		regs->ARM_r1, regs->ARM_r0);

	flags = regs->ARM_cpsr;
	buf[0] = flags & PSR_N_BIT ? 'N' : 'n';
	buf[1] = flags & PSR_Z_BIT ? 'Z' : 'z';
	buf[2] = flags & PSR_C_BIT ? 'C' : 'c';
	buf[3] = flags & PSR_V_BIT ? 'V' : 'v';
	buf[4] = '\0';

#ifndef CONFIG_CPU_V7M
	{
		const char *segment;

		if ((domain & FUNC0(DOMAIN_USER)) ==
		    FUNC1(DOMAIN_USER, DOMAIN_NOACCESS))
			segment = "none";
		else if (fs == KERNEL_DS)
			segment = "kernel";
		else
			segment = "user";

		FUNC8("Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\n",
			buf, FUNC6(regs) ? "n" : "ff",
			FUNC2(regs) ? "n" : "ff",
			processor_modes[FUNC9(regs)],
			isa_modes[FUNC7(regs)], segment);
	}
#else
	printk("xPSR: %08lx\n", regs->ARM_cpsr);
#endif

#ifdef CONFIG_CPU_CP15
	{
		unsigned int ctrl;

		buf[0] = '\0';
#ifdef CONFIG_CPU_CP15_MMU
		{
			unsigned int transbase;
			asm("mrc p15, 0, %0, c2, c0\n\t"
			    : "=r" (transbase));
			snprintf(buf, sizeof(buf), "  Table: %08x  DAC: %08x",
				transbase, domain);
		}
#endif
		asm("mrc p15, 0, %0, c1, c0\n" : "=r" (ctrl));

		printk("Control: %08x%s\n", ctrl, buf);
	}
#endif
}