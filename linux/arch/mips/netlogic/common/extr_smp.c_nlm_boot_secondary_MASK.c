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
typedef  int /*<<< orphan*/  uint64_t ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long nlm_next_gp ; 
 unsigned long nlm_next_sp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 

int FUNC7(int logical_cpu, struct task_struct *idle)
{
	uint64_t picbase;
	int hwtid;

	hwtid = FUNC2(logical_cpu);
	picbase = FUNC3(FUNC4(hwtid))->picbase;

	nlm_next_sp = (unsigned long)FUNC0(idle);
	nlm_next_gp = (unsigned long)FUNC6(idle);

	/* barrier for sp/gp store above */
	FUNC1();
	FUNC5(picbase, hwtid, 1, 1);  /* NMI */

	return 0;
}