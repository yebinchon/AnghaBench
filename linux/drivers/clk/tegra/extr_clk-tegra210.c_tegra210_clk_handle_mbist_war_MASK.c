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
struct tegra210_domain_mbist_war {int /*<<< orphan*/  clks; scalar_t__ num_clks; int /*<<< orphan*/  (* handle_lvl2_ovr ) (struct tegra210_domain_mbist_war*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (struct tegra210_domain_mbist_war*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lvl2_ovr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra210_domain_mbist_war*) ; 
 struct tegra210_domain_mbist_war* tegra210_pg_mbist_war ; 

int FUNC7(unsigned int id)
{
	int err;
	struct tegra210_domain_mbist_war *mbist_war;

	if (id >= FUNC0(tegra210_pg_mbist_war)) {
		FUNC1(1, "unknown domain id in MBIST WAR handler\n");
		return -EINVAL;
	}

	mbist_war = &tegra210_pg_mbist_war[id];
	if (!mbist_war->handle_lvl2_ovr)
		return 0;

	if (mbist_war->num_clks && !mbist_war->clks)
		return -ENODEV;

	err = FUNC3(mbist_war->num_clks, mbist_war->clks);
	if (err < 0)
		return err;

	FUNC4(&lvl2_ovr_lock);

	mbist_war->handle_lvl2_ovr(mbist_war);

	FUNC5(&lvl2_ovr_lock);

	FUNC2(mbist_war->num_clks, mbist_war->clks);

	return 0;
}