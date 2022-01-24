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
struct uml_net_private {int /*<<< orphan*/  user; int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ *) ;} ;
struct uml_net {int /*<<< orphan*/  list; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct uml_net* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct uml_net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct uml_net_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct uml_net *device = FUNC0(dev);
	struct net_device *netdev = device->dev;
	struct uml_net_private *lp = FUNC4(netdev);

	if (lp->remove != NULL)
		(*lp->remove)(&lp->user);
	FUNC3(&device->list);
	FUNC2(device);
	FUNC1(netdev);
}