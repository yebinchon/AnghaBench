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
typedef  int /*<<< orphan*/  u64 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct pt_regs* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wd_cpus_enabled ; 
 int /*<<< orphan*/  wd_smp_cpus_pending ; 
 int /*<<< orphan*/  wd_smp_cpus_stuck ; 
 int /*<<< orphan*/  wd_smp_last_reset_tb ; 
 int /*<<< orphan*/  FUNC10 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*) ; 

__attribute__((used)) static void FUNC12(int cpu, u64 tb)
{
	if (!FUNC3(cpu, &wd_smp_cpus_pending)) {
		if (FUNC9(FUNC3(cpu, &wd_smp_cpus_stuck))) {
			struct pt_regs *regs = FUNC5();
			unsigned long flags;

			FUNC10(&flags);

			FUNC6("CPU %d became unstuck TB:%lld\n",
				 cpu, tb);
			FUNC7(current);
			if (regs)
				FUNC8(regs);
			else
				FUNC4();

			FUNC1(cpu, &wd_smp_cpus_stuck);
			FUNC11(&flags);
		}
		return;
	}
	FUNC1(cpu, &wd_smp_cpus_pending);
	if (FUNC2(&wd_smp_cpus_pending)) {
		unsigned long flags;

		FUNC10(&flags);
		if (FUNC2(&wd_smp_cpus_pending)) {
			wd_smp_last_reset_tb = tb;
			FUNC0(&wd_smp_cpus_pending,
					&wd_cpus_enabled,
					&wd_smp_cpus_stuck);
		}
		FUNC11(&flags);
	}
}