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
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	struct ag71xx *ag = FUNC2(dev);

	dev->mtu = new_mtu;
	FUNC1(ag, AG71XX_REG_MAC_MFL,
		  FUNC0(dev->mtu));

	return 0;
}