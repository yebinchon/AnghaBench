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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pcph30clrr; int /*<<< orphan*/  pcph20clrr; int /*<<< orphan*/  pcph15clrr; int /*<<< orphan*/  tph10clrr0; } ;

/* Variables and functions */
#define  E500_PM_PH10 131 
#define  E500_PM_PH15 130 
#define  E500_PM_PH20 129 
#define  E500_PM_PH30 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__* rcpm_v2_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(int cpu, int state)
{
	int hw_cpu = FUNC1(cpu);
	u32 mask = 1 << FUNC0(cpu);

	switch (state) {
	case E500_PM_PH10:
		FUNC3(&rcpm_v2_regs->tph10clrr0, 1 << hw_cpu);
		break;
	case E500_PM_PH15:
		FUNC3(&rcpm_v2_regs->pcph15clrr, mask);
		break;
	case E500_PM_PH20:
		FUNC3(&rcpm_v2_regs->pcph20clrr, mask);
		break;
	case E500_PM_PH30:
		FUNC3(&rcpm_v2_regs->pcph30clrr, mask);
		break;
	default:
		FUNC2("Unknown cpu PM state (%d)\n", state);
	}
}