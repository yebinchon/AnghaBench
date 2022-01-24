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
struct task_struct {int dummy; } ;

/* Variables and functions */
#define  ARM64_SSBD_FORCE_DISABLE 131 
#define  ARM64_SSBD_FORCE_ENABLE 130 
#define  ARM64_SSBD_KERNEL 129 
#define  ARM64_SSBD_UNKNOWN 128 
 int EINVAL ; 
 int PR_SPEC_DISABLE ; 
 int PR_SPEC_ENABLE ; 
 int PR_SPEC_FORCE_DISABLE ; 
 int PR_SPEC_NOT_AFFECTED ; 
 int PR_SPEC_PRCTL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *task)
{
	switch (FUNC0()) {
	case ARM64_SSBD_UNKNOWN:
		return -EINVAL;
	case ARM64_SSBD_FORCE_ENABLE:
		return PR_SPEC_DISABLE;
	case ARM64_SSBD_KERNEL:
		if (FUNC2(task))
			return PR_SPEC_PRCTL | PR_SPEC_FORCE_DISABLE;
		if (FUNC1(task))
			return PR_SPEC_PRCTL | PR_SPEC_DISABLE;
		return PR_SPEC_PRCTL | PR_SPEC_ENABLE;
	case ARM64_SSBD_FORCE_DISABLE:
		return PR_SPEC_ENABLE;
	default:
		return PR_SPEC_NOT_AFFECTED;
	}
}