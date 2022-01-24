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
struct hub_data {int /*<<< orphan*/  slice_map; } ;
typedef  int /*<<< orphan*/  cnodeid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IP27_HUB_PEND0_IRQ ; 
 int /*<<< orphan*/  IP27_HUB_PEND1_IRQ ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_CPU_NUM ; 
 int /*<<< orphan*/  ST0_IM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct hub_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	int cpu = FUNC10();
	int slice = FUNC0(PI_CPU_NUM);
	cnodeid_t cnode = FUNC5();
	struct hub_data *hub = FUNC6(cnode);

	if (FUNC11(slice, &hub->slice_map))
		return;

	FUNC1(ST0_IM);

	FUNC9(cnode);

	FUNC2();
	FUNC8();

	/* Install our NMI handler if symmon hasn't installed one. */
	FUNC7(FUNC3(cpu));

	FUNC4(IP27_HUB_PEND0_IRQ, IRQ_TYPE_NONE);
	FUNC4(IP27_HUB_PEND1_IRQ, IRQ_TYPE_NONE);
}