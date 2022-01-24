#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  suppliers; int /*<<< orphan*/  consumers; } ;
struct TYPE_4__ {int /*<<< orphan*/  kset; } ;
struct device {TYPE_1__ links; int /*<<< orphan*/  msi_list; int /*<<< orphan*/  devres_head; int /*<<< orphan*/  devres_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lockdep_mutex; int /*<<< orphan*/  dma_pools; TYPE_2__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEV_NO_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device_ktype ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  devices_kset ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct device *dev)
{
	dev->kobj.kset = devices_kset;
	FUNC2(&dev->kobj, &device_ktype);
	FUNC0(&dev->dma_pools);
	FUNC4(&dev->mutex);
#ifdef CONFIG_PROVE_LOCKING
	mutex_init(&dev->lockdep_mutex);
#endif
	FUNC3(&dev->mutex);
	FUNC6(&dev->devres_lock);
	FUNC0(&dev->devres_head);
	FUNC1(dev);
	FUNC5(dev, -1);
#ifdef CONFIG_GENERIC_MSI_IRQ
	INIT_LIST_HEAD(&dev->msi_list);
#endif
	FUNC0(&dev->links.consumers);
	FUNC0(&dev->links.suppliers);
	dev->links.status = DL_DEV_NO_DRIVER;
}