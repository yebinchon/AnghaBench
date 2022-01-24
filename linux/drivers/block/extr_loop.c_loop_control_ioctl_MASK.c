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
struct loop_device {int /*<<< orphan*/  lo_number; TYPE_1__* lo_disk; int /*<<< orphan*/  lo_refcnt; int /*<<< orphan*/  lo_state; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int ENOSYS ; 
#define  LOOP_CTL_ADD 130 
#define  LOOP_CTL_GET_FREE 129 
#define  LOOP_CTL_REMOVE 128 
 int /*<<< orphan*/  Lo_unbound ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct loop_device**,int) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int /*<<< orphan*/  loop_index_idr ; 
 int FUNC3 (struct loop_device**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct loop_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC7(struct file *file, unsigned int cmd,
			       unsigned long parm)
{
	struct loop_device *lo;
	int ret;

	ret = FUNC5(&loop_ctl_mutex);
	if (ret)
		return ret;

	ret = -ENOSYS;
	switch (cmd) {
	case LOOP_CTL_ADD:
		ret = FUNC3(&lo, parm);
		if (ret >= 0) {
			ret = -EEXIST;
			break;
		}
		ret = FUNC2(&lo, parm);
		break;
	case LOOP_CTL_REMOVE:
		ret = FUNC3(&lo, parm);
		if (ret < 0)
			break;
		if (lo->lo_state != Lo_unbound) {
			ret = -EBUSY;
			break;
		}
		if (FUNC0(&lo->lo_refcnt) > 0) {
			ret = -EBUSY;
			break;
		}
		lo->lo_disk->private_data = NULL;
		FUNC1(&loop_index_idr, lo->lo_number);
		FUNC4(lo);
		break;
	case LOOP_CTL_GET_FREE:
		ret = FUNC3(&lo, -1);
		if (ret >= 0)
			break;
		ret = FUNC2(&lo, -1);
	}
	FUNC6(&loop_ctl_mutex);

	return ret;
}