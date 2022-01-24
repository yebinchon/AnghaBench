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
struct nps_host_reg_mtm_cfg {int ten; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(int cpu)
{
	struct nps_host_reg_mtm_cfg mtm_cfg;

	if (FUNC1(cpu) == 0)
		return 1;

	/* Enable thread in mtm */
	mtm_cfg.value = FUNC2(FUNC0(cpu));
	mtm_cfg.ten |= (1 << (FUNC1(cpu)));
	FUNC3(mtm_cfg.value, FUNC0(cpu));

	return 0;
}