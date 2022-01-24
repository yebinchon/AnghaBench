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
struct net_device {int dummy; } ;
struct ag71xx {int /*<<< orphan*/  restart_work; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct ag71xx* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ag71xx *ag = FUNC0(dev);

	if (FUNC1(ag))
		FUNC2("%s: tx timeout\n", ag->dev->name);

	FUNC3(&ag->restart_work, 1);
}