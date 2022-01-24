#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_3__ {int /*<<< orphan*/  softirq_timer; int /*<<< orphan*/  hardirq_timer; int /*<<< orphan*/  system_timer; int /*<<< orphan*/  guest_timer; int /*<<< orphan*/  user_timer; } ;
struct task_struct {int /*<<< orphan*/  utimescaled; TYPE_1__ thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  steal_timer; int /*<<< orphan*/  softirq_timer; int /*<<< orphan*/  hardirq_timer; int /*<<< orphan*/  system_timer; int /*<<< orphan*/  guest_timer; int /*<<< orphan*/  user_timer; scalar_t__ last_update_timer; scalar_t__ last_update_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUTIME_IRQ ; 
 int /*<<< orphan*/  CPUTIME_SOFTIRQ ; 
 int /*<<< orphan*/  CPUTIME_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  jiffies_64 ; 
 int /*<<< orphan*/  mt_scaling_jiffies ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ smp_cpu_mtid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct task_struct *tsk)
{
	u64 timer, clock, user, guest, system, hardirq, softirq;

	timer = S390_lowcore.last_update_timer;
	clock = S390_lowcore.last_update_clock;
	asm volatile(
		"	stpt	%0\n"	/* Store current cpu timer value */
#ifdef CONFIG_HAVE_MARCH_Z9_109_FEATURES
		"	stckf	%1"	/* Store current tod clock value */
#else
		"	stck	%1"	/* Store current tod clock value */
#endif
		: "=Q" (S390_lowcore.last_update_timer),
		  "=Q" (S390_lowcore.last_update_clock));
	clock = S390_lowcore.last_update_clock - clock;
	timer -= S390_lowcore.last_update_timer;

	if (FUNC5())
		S390_lowcore.hardirq_timer += timer;
	else
		S390_lowcore.system_timer += timer;

	/* Update MT utilization calculation */
	if (smp_cpu_mtid &&
	    FUNC8(jiffies_64, FUNC7(mt_scaling_jiffies)))
		FUNC9();

	/* Calculate cputime delta */
	user = FUNC10(&tsk->thread.user_timer,
				FUNC0(S390_lowcore.user_timer));
	guest = FUNC10(&tsk->thread.guest_timer,
				 FUNC0(S390_lowcore.guest_timer));
	system = FUNC10(&tsk->thread.system_timer,
				  FUNC0(S390_lowcore.system_timer));
	hardirq = FUNC10(&tsk->thread.hardirq_timer,
				   FUNC0(S390_lowcore.hardirq_timer));
	softirq = FUNC10(&tsk->thread.softirq_timer,
				   FUNC0(S390_lowcore.softirq_timer));
	S390_lowcore.steal_timer +=
		clock - user - guest - system - hardirq - softirq;

	/* Push account value */
	if (user) {
		FUNC3(tsk, FUNC4(user));
		tsk->utimescaled += FUNC4(FUNC6(user));
	}

	if (guest) {
		FUNC1(tsk, FUNC4(guest));
		tsk->utimescaled += FUNC4(FUNC6(guest));
	}

	if (system)
		FUNC2(tsk, system, CPUTIME_SYSTEM);
	if (hardirq)
		FUNC2(tsk, hardirq, CPUTIME_IRQ);
	if (softirq)
		FUNC2(tsk, softirq, CPUTIME_SOFTIRQ);

	return FUNC11(user + guest + system + hardirq + softirq);
}