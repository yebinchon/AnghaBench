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
struct vector_device {int /*<<< orphan*/  list; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct vector_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vector_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct vector_device *device = FUNC0(dev);
	struct net_device *netdev = device->dev;

	FUNC3(&device->list);
	FUNC2(device);
	FUNC1(netdev);
}