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
typedef  int u8 ;
struct moxtet_device {int idx; struct moxtet* moxtet; } ;
struct moxtet {int count; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TURRIS_MOX_MAX_MODULES ; 
 int FUNC0 (struct moxtet*,int*) ; 
 struct moxtet_device* FUNC1 (struct device*) ; 

int FUNC2(struct device *dev)
{
	struct moxtet_device *mdev = FUNC1(dev);
	struct moxtet *moxtet = mdev->moxtet;
	u8 buf[TURRIS_MOX_MAX_MODULES];
	int ret;

	if (mdev->idx >= moxtet->count)
		return -EINVAL;

	ret = FUNC0(moxtet, buf);
	if (ret < 0)
		return ret;

	return buf[mdev->idx + 1] >> 4;
}