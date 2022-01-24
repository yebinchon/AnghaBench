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
struct uv_hub_nmi_s {int /*<<< orphan*/  nmi_lock; int /*<<< orphan*/  in_nmi; } ;
struct TYPE_2__ {int /*<<< orphan*/  queries; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ uv_cpu_nmi ; 
 int /*<<< orphan*/  uv_in_nmi ; 
 int /*<<< orphan*/  uv_nmi_count ; 
 int /*<<< orphan*/  uv_nmi_misses ; 
 int /*<<< orphan*/  uv_nmi_slave_delay ; 
 int /*<<< orphan*/  FUNC8 (int,struct uv_hub_nmi_s*) ; 
 int FUNC9 (struct uv_hub_nmi_s*) ; 

__attribute__((used)) static int FUNC10(struct uv_hub_nmi_s *hub_nmi)
{
	int cpu = FUNC5();
	int nmi = 0;
	int nmi_detected = 0;

	FUNC2(&uv_nmi_count);
	FUNC6(uv_cpu_nmi.queries);

	do {
		nmi = FUNC0(&hub_nmi->in_nmi);
		if (nmi)
			break;

		if (FUNC3(&hub_nmi->nmi_lock)) {
			nmi_detected = FUNC9(hub_nmi);

			/* Check flag for UV external NMI */
			if (nmi_detected > 0) {
				FUNC8(cpu, hub_nmi);
				nmi = 1;
				break;
			}

			/* A non-PCH node in a hubless system waits for NMI */
			else if (nmi_detected < 0)
				goto slave_wait;

			/* MMR/PCH NMI flag is clear */
			FUNC4(&hub_nmi->nmi_lock);

		} else {

			/* Wait a moment for the HUB NMI locker to set flag */
slave_wait:		FUNC1();
			FUNC7(uv_nmi_slave_delay);

			/* Re-check hub in_nmi flag */
			nmi = FUNC0(&hub_nmi->in_nmi);
			if (nmi)
				break;
		}

		/*
		 * Check if this BMC missed setting the MMR NMI flag (or)
		 * UV hubless system where only PCH owner can check flag
		 */
		if (!nmi) {
			nmi = FUNC0(&uv_in_nmi);
			if (nmi)
				FUNC8(cpu, hub_nmi);
		}

		/* If we're holding the hub lock, release it now */
		if (nmi_detected < 0)
			FUNC4(&hub_nmi->nmi_lock);

	} while (0);

	if (!nmi)
		FUNC2(&uv_nmi_misses);

	return nmi;
}