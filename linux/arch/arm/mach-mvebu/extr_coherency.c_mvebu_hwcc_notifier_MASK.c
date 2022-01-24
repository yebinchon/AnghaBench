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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long BUS_NOTIFY_ADD_DEVICE ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  arm_coherent_dma_ops ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *nb,
			       unsigned long event, void *__dev)
{
	struct device *dev = __dev;

	if (event != BUS_NOTIFY_ADD_DEVICE)
		return NOTIFY_DONE;
	FUNC0(dev, &arm_coherent_dma_ops);

	return NOTIFY_OK;
}