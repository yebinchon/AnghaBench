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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLAVE_EXIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  uv_nmi_cpus_in_nmi ; 
 int /*<<< orphan*/  uv_nmi_slave_continue ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int cpu, struct pt_regs *regs, int master)
{
	if (master) {
		int in = FUNC0(&uv_nmi_cpus_in_nmi);
		int out = FUNC3() - in;

		FUNC4("UV: NMI CPU health check (non-responding:%d)\n", out);
		FUNC1(&uv_nmi_slave_continue, SLAVE_EXIT);
	} else {
		while (!FUNC0(&uv_nmi_slave_continue))
			FUNC2();
	}
	FUNC5(master);
}