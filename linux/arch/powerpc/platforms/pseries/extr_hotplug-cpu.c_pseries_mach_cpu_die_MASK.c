#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int idle; int donate_dedicated_cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* suspend_disable_cpu ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CPU_STATE_INACTIVE ; 
 scalar_t__ CPU_STATE_OFFLINE ; 
 scalar_t__ CPU_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,scalar_t__) ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static void FUNC21(void)
{
	unsigned int cpu = FUNC14();
	unsigned int hwcpu = FUNC6();
	u8 cede_latency_hint = 0;

	FUNC8();
	FUNC7();
	if (FUNC19())
		FUNC20();
	else
		FUNC18();

	if (FUNC4(cpu) == CPU_STATE_INACTIVE) {
		FUNC13(cpu, CPU_STATE_INACTIVE);
		if (ppc_md.suspend_disable_cpu)
			ppc_md.suspend_disable_cpu();

		cede_latency_hint = 2;

		FUNC3()->idle = 1;
		if (!FUNC10(FUNC3()))
			FUNC3()->donate_dedicated_cpu = 1;

		while (FUNC4(cpu) == CPU_STATE_INACTIVE) {
			while (!FUNC11()) {
				FUNC9();
				FUNC8();
			}

			FUNC2(cede_latency_hint);
		}

		FUNC8();

		if (!FUNC10(FUNC3()))
			FUNC3()->donate_dedicated_cpu = 0;
		FUNC3()->idle = 0;

		if (FUNC4(cpu) == CPU_STATE_ONLINE) {
			FUNC17(hwcpu);

			FUNC5();
			/*
			 * Call to start_secondary_resume() will not return.
			 * Kernel stack will be reset and start_secondary()
			 * will be called to continue the online operation.
			 */
			FUNC15();
		}
	}

	/* Requested state is CPU_STATE_OFFLINE at this point */
	FUNC1(FUNC4(cpu) != CPU_STATE_OFFLINE);

	FUNC13(cpu, CPU_STATE_OFFLINE);
	FUNC17(hwcpu);
	FUNC12();

	/* Should never get here... */
	FUNC0();
	for(;;);
}