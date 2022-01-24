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
struct mtk_cpu_dvfs_info {int /*<<< orphan*/  cpus; int /*<<< orphan*/  inter_clk; int /*<<< orphan*/  cpu_clk; int /*<<< orphan*/  sram_reg; int /*<<< orphan*/  proc_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtk_cpu_dvfs_info *info)
{
	if (!FUNC0(info->proc_reg))
		FUNC3(info->proc_reg);
	if (!FUNC0(info->sram_reg))
		FUNC3(info->sram_reg);
	if (!FUNC0(info->cpu_clk))
		FUNC1(info->cpu_clk);
	if (!FUNC0(info->inter_clk))
		FUNC1(info->inter_clk);

	FUNC2(&info->cpus);
}