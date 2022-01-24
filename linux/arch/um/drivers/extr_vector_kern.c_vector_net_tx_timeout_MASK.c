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
struct TYPE_2__ {int /*<<< orphan*/  tx_timeout_count; } ;
struct vector_private {int /*<<< orphan*/  reset_tx; TYPE_1__ estats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct vector_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct vector_private *vp = FUNC0(dev);

	vp->estats.tx_timeout_count++;
	FUNC1(dev);
	FUNC2(&vp->reset_tx);
}