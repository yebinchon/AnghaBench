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
typedef  int u64 ;
struct pt_regs {scalar_t__ nip; } ;
struct TYPE_2__ {int /*<<< orphan*/  soft_nmi_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_DEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 () ; 
 scalar_t__ hardlockup_panic ; 
 TYPE_1__ irq_stat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pt_regs*) ; 
 scalar_t__ sysctl_hardlockup_all_cpu_backtrace ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  wd_cpus_enabled ; 
 int wd_panic_timeout_tb ; 
 int /*<<< orphan*/  wd_smp_cpus_stuck ; 
 int /*<<< orphan*/  FUNC16 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long*) ; 
 int /*<<< orphan*/  wd_timer_tb ; 

void FUNC18(struct pt_regs *regs)
{
	unsigned long flags;
	int cpu = FUNC11();
	u64 tb;

	if (!FUNC1(cpu, &wd_cpus_enabled))
		return;

	FUNC4();

	FUNC0(irq_stat.soft_nmi_irqs);

	tb = FUNC2();
	if (tb - FUNC7(wd_timer_tb, cpu) >= wd_panic_timeout_tb) {
		FUNC16(&flags);
		if (FUNC1(cpu, &wd_smp_cpus_stuck)) {
			FUNC17(&flags);
			goto out;
		}
		FUNC12(cpu, tb);

		FUNC8("CPU %d self-detected hard LOCKUP @ %pS\n",
			 cpu, (void *)regs->nip);
		FUNC8("CPU %d TB:%lld, last heartbeat TB:%lld (%lldms ago)\n",
			 cpu, tb, FUNC7(wd_timer_tb, cpu),
			 FUNC14(tb - FUNC7(wd_timer_tb, cpu)) / 1000000);
		FUNC10();
		FUNC9(current);
		FUNC13(regs);

		FUNC17(&flags);

		if (sysctl_hardlockup_all_cpu_backtrace)
			FUNC15();

		if (hardlockup_panic)
			FUNC6(regs, "Hard LOCKUP");
	}
	if (wd_panic_timeout_tb < 0x7fffffff)
		FUNC3(SPRN_DEC, wd_panic_timeout_tb);

out:
	FUNC5();
}