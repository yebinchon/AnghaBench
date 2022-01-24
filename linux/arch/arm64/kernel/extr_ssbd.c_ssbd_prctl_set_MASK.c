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
 int ARM64_SSBD_FORCE_DISABLE ; 
 int ARM64_SSBD_FORCE_ENABLE ; 
 int ARM64_SSBD_MITIGATED ; 
 int ARM64_SSBD_UNKNOWN ; 
 int EINVAL ; 
 int EPERM ; 
 int ERANGE ; 
#define  PR_SPEC_DISABLE 130 
#define  PR_SPEC_ENABLE 129 
#define  PR_SPEC_FORCE_DISABLE 128 
 int /*<<< orphan*/  TIF_SSBD ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static int FUNC9(struct task_struct *task, unsigned long ctrl)
{
	int state = FUNC0();

	/* Unsupported */
	if (state == ARM64_SSBD_UNKNOWN)
		return -EINVAL;

	/* Treat the unaffected/mitigated state separately */
	if (state == ARM64_SSBD_MITIGATED) {
		switch (ctrl) {
		case PR_SPEC_ENABLE:
			return -EPERM;
		case PR_SPEC_DISABLE:
		case PR_SPEC_FORCE_DISABLE:
			return 0;
		}
	}

	/*
	 * Things are a bit backward here: the arm64 internal API
	 * *enables the mitigation* when the userspace API *disables
	 * speculation*. So much fun.
	 */
	switch (ctrl) {
	case PR_SPEC_ENABLE:
		/* If speculation is force disabled, enable is not allowed */
		if (state == ARM64_SSBD_FORCE_ENABLE ||
		    FUNC8(task))
			return -EPERM;
		FUNC5(task);
		FUNC1(task, TIF_SSBD);
		FUNC4(task);
		break;
	case PR_SPEC_DISABLE:
		if (state == ARM64_SSBD_FORCE_DISABLE)
			return -EPERM;
		FUNC6(task);
		FUNC2(task, TIF_SSBD);
		FUNC3(task);
		break;
	case PR_SPEC_FORCE_DISABLE:
		if (state == ARM64_SSBD_FORCE_DISABLE)
			return -EPERM;
		FUNC6(task);
		FUNC7(task);
		FUNC2(task, TIF_SSBD);
		FUNC3(task);
		break;
	default:
		return -ERANGE;
	}

	return 0;
}