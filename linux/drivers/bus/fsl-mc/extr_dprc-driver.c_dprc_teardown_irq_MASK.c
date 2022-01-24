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
struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int /*<<< orphan*/  dev; struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_mc_device*) ; 

__attribute__((used)) static void FUNC3(struct fsl_mc_device *mc_dev)
{
	struct fsl_mc_device_irq *irq = mc_dev->irqs[0];

	(void)FUNC1(mc_dev);

	FUNC0(&mc_dev->dev, irq->msi_desc->irq, &mc_dev->dev);

	FUNC2(mc_dev);
}