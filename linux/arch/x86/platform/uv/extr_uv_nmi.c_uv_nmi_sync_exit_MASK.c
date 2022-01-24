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

/* Variables and functions */
 int /*<<< orphan*/  SLAVE_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  uv_nmi_cpus_in_nmi ; 
 int /*<<< orphan*/  uv_nmi_slave_continue ; 

__attribute__((used)) static void FUNC4(int master)
{
	FUNC0(&uv_nmi_cpus_in_nmi);
	if (master) {
		while (FUNC1(&uv_nmi_cpus_in_nmi) > 0)
			FUNC3();
		FUNC2(&uv_nmi_slave_continue, SLAVE_CLEAR);
	} else {
		while (FUNC1(&uv_nmi_slave_continue))
			FUNC3();
	}
}