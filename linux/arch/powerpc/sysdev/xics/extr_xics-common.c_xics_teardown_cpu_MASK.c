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
struct xics_cppr {scalar_t__ index; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown_cpu ) () ;int /*<<< orphan*/  (* set_priority ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* icp_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct xics_cppr* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xics_cppr ; 

void FUNC3(void)
{
	struct xics_cppr *os_cppr = FUNC2(&xics_cppr);

	/*
	 * we have to reset the cppr index to 0 because we're
	 * not going to return from the IPI
	 */
	os_cppr->index = 0;
	icp_ops->set_priority(0);
	icp_ops->teardown_cpu();
}