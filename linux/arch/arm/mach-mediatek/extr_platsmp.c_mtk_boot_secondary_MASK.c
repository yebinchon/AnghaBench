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
struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__* core_regs; int /*<<< orphan*/ * core_keys; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ mtk_smp_base ; 
 TYPE_1__* mtk_smp_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu, struct task_struct *idle)
{
	if (!mtk_smp_base)
		return -EINVAL;

	if (!mtk_smp_info->core_keys[cpu-1])
		return -EINVAL;

	FUNC2(mtk_smp_info->core_keys[cpu-1],
		mtk_smp_base + mtk_smp_info->core_regs[cpu-1]);

	FUNC0(FUNC1(cpu));

	return 0;
}