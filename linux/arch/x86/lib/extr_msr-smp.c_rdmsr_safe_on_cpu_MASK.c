#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  h; int /*<<< orphan*/  l; } ;
struct TYPE_6__ {int err; TYPE_1__ reg; int /*<<< orphan*/  msr_no; } ;
struct msr_info_completion {TYPE_2__ msr; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  rv ;
struct TYPE_7__ {struct msr_info_completion* info; int /*<<< orphan*/  func; } ;
typedef  TYPE_3__ call_single_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  __rdmsr_safe_on_cpu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msr_info_completion*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (unsigned int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(unsigned int cpu, u32 msr_no, u32 *l, u32 *h)
{
	struct msr_info_completion rv;
	call_single_data_t csd = {
		.func	= __rdmsr_safe_on_cpu,
		.info	= &rv,
	};
	int err;

	FUNC1(&rv, 0, sizeof(rv));
	FUNC0(&rv.done);
	rv.msr.msr_no = msr_no;

	err = FUNC2(cpu, &csd);
	if (!err) {
		FUNC3(&rv.done);
		err = rv.msr.err;
	}
	*l = rv.msr.reg.l;
	*h = rv.msr.reg.h;

	return err;
}