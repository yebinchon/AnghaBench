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
struct mce {int status; int bank; } ;
struct TYPE_4__ {int /*<<< orphan*/  tolerant; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* status ) (int) ;} ;

/* Variables and functions */
 scalar_t__ MCE_PANIC_SEVERITY ; 
 int MCI_STATUS_VAL ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 TYPE_2__ mca_cfg ; 
 int /*<<< orphan*/  mce_num_banks ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mce*,int) ; 
 scalar_t__ FUNC3 (struct mce*,int /*<<< orphan*/ ,char**,int) ; 
 TYPE_1__ msr_ops ; 
 int /*<<< orphan*/  FUNC4 (int,struct mce*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mce *m, char **msg, unsigned long *validp,
			  struct pt_regs *regs)
{
	char *tmp;
	int i;

	for (i = 0; i < FUNC6(mce_num_banks); i++) {
		m->status = FUNC1(msr_ops.status(i));
		if (!(m->status & MCI_STATUS_VAL))
			continue;

		FUNC0(i, validp);
		if (&quirk_no_way_out)
			FUNC4(i, m, regs);

		if (FUNC3(m, mca_cfg.tolerant, &tmp, true) >= MCE_PANIC_SEVERITY) {
			m->bank = i;
			FUNC2(m, i);
			*msg = tmp;
			return 1;
		}
	}
	return 0;
}