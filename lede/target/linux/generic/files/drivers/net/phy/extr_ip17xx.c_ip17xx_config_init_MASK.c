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
struct phy_device {struct net_device* attached_dev; struct ip17xx_state* priv; } ;
struct net_device {int dummy; } ;
struct ip17xx_state {int registered; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct phy_device *pdev)
{
	struct ip17xx_state *state = pdev->priv;
	struct net_device *dev = pdev->attached_dev;
	int err;

	err = FUNC1(&state->dev, dev);
	if (err < 0)
		return err;

	state->registered = true;
	FUNC0(&state->dev);
	return 0;
}