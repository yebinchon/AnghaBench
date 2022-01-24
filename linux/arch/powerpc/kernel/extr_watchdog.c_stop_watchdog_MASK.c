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
struct hrtimer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*) ; 
 int FUNC4 () ; 
 struct hrtimer* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wd_cpus_enabled ; 
 int /*<<< orphan*/  wd_hrtimer ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
	struct hrtimer *hrtimer = FUNC5(&wd_hrtimer);
	int cpu = FUNC4();
	unsigned long flags;

	if (!FUNC1(cpu, &wd_cpus_enabled))
		return; /* Can happen in CPU unplug case */

	FUNC3(hrtimer);

	FUNC7(&flags);
	FUNC0(cpu, &wd_cpus_enabled);
	FUNC8(&flags);

	FUNC6(cpu, FUNC2());
}