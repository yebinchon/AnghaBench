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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct switch_dev {int dummy; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phy_read16 ) (struct b53_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct b53_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct b53_device* FUNC3 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC4(struct switch_dev *dev, int addr, u8 reg, u16 *value)
{
	struct b53_device *priv = FUNC3(dev);

	if (priv->ops->phy_read16)
		return priv->ops->phy_read16(priv, addr, reg, value);

	return FUNC1(priv, FUNC0(addr), reg, value);
}