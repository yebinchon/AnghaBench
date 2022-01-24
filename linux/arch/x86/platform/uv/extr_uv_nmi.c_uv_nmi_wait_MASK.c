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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  UV_NMI_STATE_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ uv_cpu_nmi ; 
 int /*<<< orphan*/  uv_nmi_cpu_mask ; 
 int /*<<< orphan*/  uv_nmi_cpus_in_nmi ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(int master)
{
	/* Indicate this CPU is in: */
	FUNC5(uv_cpu_nmi.state, UV_NMI_STATE_IN);

	/* If not the first CPU in (the master), then we are a slave CPU */
	if (!master)
		return;

	do {
		/* Wait for all other CPU's to gather here */
		if (!FUNC7(1))
			break;

		/* If not all made it in, send IPI NMI to them */
		FUNC4("UV: Sending NMI IPI to %d CPUs: %*pbl\n",
			 FUNC2(uv_nmi_cpu_mask),
			 FUNC1(uv_nmi_cpu_mask));

		FUNC6();

		/* If all CPU's are in, then done */
		if (!FUNC7(0))
			break;

		FUNC4("UV: %d CPUs not in NMI loop: %*pbl\n",
			 FUNC2(uv_nmi_cpu_mask),
			 FUNC1(uv_nmi_cpu_mask));
	} while (0);

	FUNC4("UV: %d of %d CPUs in NMI\n",
		FUNC0(&uv_nmi_cpus_in_nmi), FUNC3());
}