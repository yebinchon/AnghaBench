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
typedef  int u32 ;
typedef  int suspend_state_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MX27_CCM_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PM_SUSPEND_MEM 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(suspend_state_t state)
{
	u32 cscr;
	switch (state) {
	case PM_SUSPEND_MEM:
		/* Clear MPEN and SPEN to disable MPLL/SPLL */
		cscr = FUNC2(FUNC0(MX27_CCM_BASE_ADDR));
		cscr &= 0xFFFFFFFC;
		FUNC3(cscr, FUNC0(MX27_CCM_BASE_ADDR));
		/* Executes WFI */
		FUNC1();
		break;

	default:
		return -EINVAL;
	}
	return 0;
}