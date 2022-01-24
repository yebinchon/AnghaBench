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
struct moxtet_device {scalar_t__ idx; struct moxtet* moxtet; } ;
struct moxtet {scalar_t__ count; int* tx; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct moxtet_device* FUNC0 (struct device*) ; 

int FUNC1(struct device *dev)
{
	struct moxtet_device *mdev = FUNC0(dev);
	struct moxtet *moxtet = mdev->moxtet;

	if (mdev->idx >= moxtet->count)
		return -EINVAL;

	return moxtet->tx[moxtet->count - mdev->idx];
}