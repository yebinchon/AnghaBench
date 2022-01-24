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
struct sw {int dummy; } ;
struct port {int /*<<< orphan*/  phydev; struct net_device* netdev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sw*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* napi_dev ; 
 struct sw* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 struct port** switch_port_tab ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *dev = FUNC5(pdev);
	struct sw *sw = FUNC3(dev);
	int i;

	FUNC1(sw);
	for (i = 3; i >= 0; i--) {
		if (switch_port_tab[i]) {
			struct port *port = switch_port_tab[i];
			struct net_device *dev = port->netdev;
			FUNC6(dev);
			FUNC4(port->phydev);
			switch_port_tab[i] = 0;
			FUNC2(dev);
		}
	}

	FUNC2(napi_dev);
	FUNC0();

	return 0;
}