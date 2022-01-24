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
struct net_device {int mtu; } ;
struct ag71xx {unsigned int max_frame_len; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 struct ag71xx* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	struct ag71xx *ag = FUNC1(dev);
	unsigned int max_frame_len;

	max_frame_len = FUNC0(new_mtu);
	if (new_mtu < 68 || max_frame_len > ag->max_frame_len)
		return -EINVAL;

	if (FUNC2(dev))
		return -EBUSY;

	dev->mtu = new_mtu;
	return 0;
}