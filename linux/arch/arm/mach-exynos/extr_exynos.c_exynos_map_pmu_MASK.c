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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  exynos_dt_pmu_match ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmu_base_addr ; 

__attribute__((used)) static void FUNC2(void)
{
	struct device_node *np;

	np = FUNC0(NULL, exynos_dt_pmu_match);
	if (np)
		pmu_base_addr = FUNC1(np, 0);
}