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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 unsigned long* paravirt_smp_gp ; 
 int /*<<< orphan*/ * paravirt_smp_sp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(int cpu, struct task_struct *idle)
{
	paravirt_smp_gp[cpu] = (unsigned long)FUNC2(idle);
	FUNC1();
	paravirt_smp_sp[cpu] = FUNC0(idle);
	return 0;
}