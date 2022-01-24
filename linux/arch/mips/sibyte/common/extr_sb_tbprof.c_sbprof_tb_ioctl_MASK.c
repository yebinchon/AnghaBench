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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tb_read; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SBPROF_ZBSTART 130 
#define  SBPROF_ZBSTOP 129 
#define  SBPROF_ZBWAITFULL 128 
 int /*<<< orphan*/  TB_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 TYPE_1__ sbp ; 
 int FUNC3 (struct file*) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC6(struct file *filp,
			    unsigned int command,
			    unsigned long arg)
{
	int err = 0;

	switch (command) {
	case SBPROF_ZBSTART:
		FUNC0(&sbp.lock);
		err = FUNC3(filp);
		FUNC1(&sbp.lock);
		break;

	case SBPROF_ZBSTOP:
		FUNC0(&sbp.lock);
		err = FUNC4();
		FUNC1(&sbp.lock);
		break;

	case SBPROF_ZBWAITFULL: {
		err = FUNC5(sbp.tb_read, TB_FULL);
		if (err)
			break;

		err = FUNC2(TB_FULL, (int *) arg);
		break;
	}

	default:
		err = -EINVAL;
		break;
	}

	return err;
}