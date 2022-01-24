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
struct uv_hub_nmi_s {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  pinging; } ;

/* Variables and functions */
 int NMI_DONE ; 
 int NMI_HANDLED ; 
 int SLAVE_CLEAR ; 
 int /*<<< orphan*/  UV_NMI_STATE_OUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct uv_hub_nmi_s*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_1__ uv_cpu_nmi ; 
 struct uv_hub_nmi_s* uv_hub_nmi ; 
 int /*<<< orphan*/  uv_in_nmi ; 
 int /*<<< orphan*/  uv_nmi_action ; 
 int /*<<< orphan*/  FUNC14 (int,struct pt_regs*,int) ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  uv_nmi_cpu ; 
 int /*<<< orphan*/  uv_nmi_cpu_mask ; 
 int /*<<< orphan*/  uv_nmi_cpus_in_nmi ; 
 int /*<<< orphan*/  FUNC17 (int,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int,struct pt_regs*) ; 
 int /*<<< orphan*/  uv_nmi_kexec_failed ; 
 int /*<<< orphan*/  uv_nmi_slave_continue ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(unsigned int reason, struct pt_regs *regs)
{
	struct uv_hub_nmi_s *hub_nmi = uv_hub_nmi;
	int cpu = FUNC6();
	int master = 0;
	unsigned long flags;

	FUNC4(flags);

	/* If not a UV System NMI, ignore */
	if (!FUNC9(uv_cpu_nmi.pinging) && !FUNC12(hub_nmi)) {
		FUNC3(flags);
		return NMI_DONE;
	}

	/* Indicate we are the first CPU into the NMI handler */
	master = (FUNC0(&uv_nmi_cpu) == cpu);

	/* If NMI action is "kdump", then attempt to do it */
	if (FUNC15("kdump")) {
		FUNC18(cpu, master, regs);

		/* Unexpected return, revert action to "dump" */
		if (master)
			FUNC8(uv_nmi_action, "dump", FUNC7(uv_nmi_action));
	}

	/* Pause as all CPU's enter the NMI handler */
	FUNC21(master);

	/* Process actions other than "kdump": */
	if (FUNC15("health")) {
		FUNC14(cpu, regs, master);
	} else if (FUNC15("ips") || FUNC15("dump")) {
		FUNC17(cpu, regs, master);
	} else if (FUNC15("kdb") || FUNC15("kgdb")) {
		FUNC11(cpu, regs, master);
	} else {
		if (master)
			FUNC5("UV: unknown NMI action: %s\n", uv_nmi_action);
		FUNC19(master);
	}

	/* Clear per_cpu "in_nmi" flag */
	FUNC10(uv_cpu_nmi.state, UV_NMI_STATE_OUT);

	/* Clear MMR NMI flag on each hub */
	FUNC13(cpu);

	/* Clear global flags */
	if (master) {
		if (FUNC2(uv_nmi_cpu_mask))
			FUNC16();
		FUNC1(&uv_nmi_cpus_in_nmi, -1);
		FUNC1(&uv_nmi_cpu, -1);
		FUNC1(&uv_in_nmi, 0);
		FUNC1(&uv_nmi_kexec_failed, 0);
		FUNC1(&uv_nmi_slave_continue, SLAVE_CLEAR);
	}

	FUNC20();
	FUNC3(flags);

	return NMI_HANDLED;
}