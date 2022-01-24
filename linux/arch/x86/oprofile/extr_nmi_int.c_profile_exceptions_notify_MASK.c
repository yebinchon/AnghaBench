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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* check_ctrs ) (struct pt_regs*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int NMI_DONE ; 
 int NMI_HANDLED ; 
 int /*<<< orphan*/  cpu_msrs ; 
 scalar_t__ ctr_running ; 
 TYPE_1__* model ; 
 int /*<<< orphan*/  nmi_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned int val, struct pt_regs *regs)
{
	if (ctr_running)
		model->check_ctrs(regs, FUNC2(&cpu_msrs));
	else if (!nmi_enabled)
		return NMI_DONE;
	else
		model->stop(FUNC2(&cpu_msrs));
	return NMI_HANDLED;
}