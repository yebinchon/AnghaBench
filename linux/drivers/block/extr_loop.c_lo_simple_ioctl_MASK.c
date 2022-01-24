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
struct loop_device {int (* ioctl ) (struct loop_device*,unsigned int,unsigned long) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  LOOP_SET_BLOCK_SIZE 130 
#define  LOOP_SET_CAPACITY 129 
#define  LOOP_SET_DIRECT_IO 128 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int FUNC0 (struct loop_device*,unsigned long) ; 
 int FUNC1 (struct loop_device*) ; 
 int FUNC2 (struct loop_device*,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct loop_device*,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct loop_device *lo, unsigned int cmd,
			   unsigned long arg)
{
	int err;

	err = FUNC3(&loop_ctl_mutex);
	if (err)
		return err;
	switch (cmd) {
	case LOOP_SET_CAPACITY:
		err = FUNC1(lo);
		break;
	case LOOP_SET_DIRECT_IO:
		err = FUNC2(lo, arg);
		break;
	case LOOP_SET_BLOCK_SIZE:
		err = FUNC0(lo, arg);
		break;
	default:
		err = lo->ioctl ? lo->ioctl(lo, cmd, arg) : -EINVAL;
	}
	FUNC4(&loop_ctl_mutex);
	return err;
}