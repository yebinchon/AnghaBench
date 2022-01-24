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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_regs {int /*<<< orphan*/  nip; int /*<<< orphan*/  msr; } ;
struct mce_ierror_table {int dummy; } ;
struct mce_error_info {scalar_t__ error_type; int /*<<< orphan*/  member_0; } ;
struct mce_derror_table {int dummy; } ;

/* Variables and functions */
 scalar_t__ MCE_ERROR_TYPE_UE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 long FUNC1 (struct pt_regs*,struct mce_derror_table const*,struct mce_error_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC2 (struct pt_regs*,struct mce_ierror_table const*,struct mce_error_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC3 (struct pt_regs*,struct mce_error_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,long,struct mce_error_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC5(struct pt_regs *regs,
		const struct mce_derror_table dtable[],
		const struct mce_ierror_table itable[])
{
	struct mce_error_info mce_err = { 0 };
	uint64_t addr, phys_addr = ULONG_MAX;
	uint64_t srr1 = regs->msr;
	long handled;

	if (FUNC0(srr1))
		handled = FUNC1(regs, dtable, &mce_err, &addr,
				&phys_addr);
	else
		handled = FUNC2(regs, itable, &mce_err, &addr,
				&phys_addr);

	if (!handled && mce_err.error_type == MCE_ERROR_TYPE_UE)
		handled = FUNC3(regs, &mce_err);

	FUNC4(regs, handled, &mce_err, regs->nip, addr, phys_addr);

	return handled;
}