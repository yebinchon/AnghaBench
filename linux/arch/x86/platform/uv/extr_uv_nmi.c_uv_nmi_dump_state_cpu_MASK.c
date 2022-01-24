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
struct pt_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  UV_NMI_STATE_DUMP_DONE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ uv_cpu_nmi ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(int cpu, struct pt_regs *regs)
{
	const char *dots = " ................................. ";

	if (cpu == 0)
		FUNC5();

	if (current->pid != 0 || !FUNC3("ips"))
		FUNC4(cpu, regs);

	if (FUNC3("dump")) {
		FUNC0("UV:%sNMI process trace for CPU %d\n", dots, cpu);
		FUNC1(regs);
	}

	FUNC2(uv_cpu_nmi.state, UV_NMI_STATE_DUMP_DONE);
}