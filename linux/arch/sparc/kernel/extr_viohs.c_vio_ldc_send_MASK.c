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
struct vio_driver_state {int /*<<< orphan*/  lp; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct vio_driver_state *vio, void *data, int len)
{
	int err, limit = 1000;

	err = -EINVAL;
	while (limit-- > 0) {
		err = FUNC0(vio->lp, data, len);
		if (!err || (err != -EAGAIN))
			break;
		FUNC1(1);
	}

	return err;
}