#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hmi_exceptions; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hmi_exception_early ) (struct pt_regs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_regs*) ; 
 TYPE_2__ irq_stat ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

long FUNC5(struct pt_regs *regs)
{	
	int ret;

	FUNC0(irq_stat.hmi_exceptions);

	ret = FUNC1(regs);
	if (ret >= 0)
		return ret;

	FUNC3();

	if (ppc_md.hmi_exception_early)
		ppc_md.hmi_exception_early(regs);

	FUNC4();

	return 1;
}