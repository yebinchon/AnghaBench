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
struct rt_sigframe_user_layout {int /*<<< orphan*/  sve_offset; int /*<<< orphan*/  esr_offset; int /*<<< orphan*/  fpsimd_offset; } ;
struct fpsimd_context {int dummy; } ;
struct esr_context {int dummy; } ;
struct TYPE_3__ {int sve_vl; scalar_t__ fault_code; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  TIF_SVE ; 
 TYPE_2__* current ; 
 int FUNC1 (struct rt_sigframe_user_layout*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct rt_sigframe_user_layout*) ; 
 int sve_max_vl ; 
 unsigned int FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rt_sigframe_user_layout *user,
				 bool add_all)
{
	int err;

	err = FUNC1(user, &user->fpsimd_offset,
			     sizeof(struct fpsimd_context));
	if (err)
		return err;

	/* fault information, if valid */
	if (add_all || current->thread.fault_code) {
		err = FUNC1(user, &user->esr_offset,
				     sizeof(struct esr_context));
		if (err)
			return err;
	}

	if (FUNC4()) {
		unsigned int vq = 0;

		if (add_all || FUNC5(TIF_SVE)) {
			int vl = sve_max_vl;

			if (!add_all)
				vl = current->thread.sve_vl;

			vq = FUNC3(vl);
		}

		err = FUNC1(user, &user->sve_offset,
				     FUNC0(vq));
		if (err)
			return err;
	}

	return FUNC2(user);
}