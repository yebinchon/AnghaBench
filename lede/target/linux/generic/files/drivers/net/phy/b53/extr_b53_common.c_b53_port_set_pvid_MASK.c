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
struct switch_dev {int dummy; } ;
struct b53_device {TYPE_1__* ports; int /*<<< orphan*/  allow_vid_4095; } ;
struct TYPE_2__ {int pvid; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct b53_device*) ; 
 struct b53_device* FUNC1 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC2(struct switch_dev *dev, int port, int val)
{
	struct b53_device *priv = FUNC1(dev);

	if (val > 15 && FUNC0(priv))
		return -EINVAL;
	if (val == 4095 && !priv->allow_vid_4095)
		return -EINVAL;

	priv->ports[port].pvid = val;

	return 0;
}