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
struct mask_info {struct mask_info* next; int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
#define  TOPOLOGY_MODE_HW 130 
#define  TOPOLOGY_MODE_PACKAGE 129 
#define  TOPOLOGY_MODE_SINGLE 128 
 int /*<<< orphan*/  cpu_present_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int topology_mode ; 

__attribute__((used)) static cpumask_t FUNC4(struct mask_info *info, unsigned int cpu)
{
	cpumask_t mask;

	FUNC0(&mask, FUNC2(cpu));
	switch (topology_mode) {
	case TOPOLOGY_MODE_HW:
		while (info) {
			if (FUNC3(cpu, &info->mask)) {
				mask = info->mask;
				break;
			}
			info = info->next;
		}
		if (FUNC1(&mask))
			FUNC0(&mask, FUNC2(cpu));
		break;
	case TOPOLOGY_MODE_PACKAGE:
		FUNC0(&mask, cpu_present_mask);
		break;
	default:
		/* fallthrough */
	case TOPOLOGY_MODE_SINGLE:
		FUNC0(&mask, FUNC2(cpu));
		break;
	}
	return mask;
}