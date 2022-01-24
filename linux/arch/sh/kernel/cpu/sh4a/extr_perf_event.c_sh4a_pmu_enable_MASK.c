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
struct hw_perf_event {int config; } ;

/* Variables and functions */
 int CCBR_CMDS ; 
 unsigned int CCBR_DUC ; 
 int CCBR_PPCE ; 
 unsigned int PMCAT_CLR0 ; 
 unsigned int PMCAT_CLR1 ; 
 unsigned int PMCAT_EMU_CLR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PPC_PMCAT ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hw_perf_event *hwc, int idx)
{
	unsigned int tmp;

	tmp = FUNC1(PPC_PMCAT);
	tmp &= ~PMCAT_EMU_CLR_MASK;
	tmp |= idx ? PMCAT_CLR1 : PMCAT_CLR0;
	FUNC2(tmp, PPC_PMCAT);

	tmp = FUNC1(FUNC0(idx));
	tmp |= (hwc->config << 6) | CCBR_CMDS | CCBR_PPCE;
	FUNC2(tmp, FUNC0(idx));

	FUNC2(FUNC1(FUNC0(idx)) | CCBR_DUC, FUNC0(idx));
}