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
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ag71xx {int /*<<< orphan*/  mac_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct ag71xx* FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device *dev = FUNC6(pdev);

	if (dev) {
		struct ag71xx *ag = FUNC5(dev);

		FUNC0(ag);
		FUNC1(ag);
		FUNC8(dev);
		FUNC2(dev->irq, dev);
		FUNC3(ag->mac_base);
		FUNC4(dev);
		FUNC7(pdev, NULL);
	}

	return 0;
}