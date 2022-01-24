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
struct mtk_cpu_dvfs_info {int /*<<< orphan*/  proc_reg; scalar_t__ need_voltage_tracking; } ;

/* Variables and functions */
 scalar_t__ VOLT_TOL ; 
 int FUNC0 (struct mtk_cpu_dvfs_info*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtk_cpu_dvfs_info *info, int vproc)
{
	if (info->need_voltage_tracking)
		return FUNC0(info, vproc);
	else
		return FUNC1(info->proc_reg, vproc,
					     vproc + VOLT_TOL);
}