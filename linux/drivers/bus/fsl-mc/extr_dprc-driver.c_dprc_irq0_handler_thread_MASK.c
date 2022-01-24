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
typedef  scalar_t__ u32 ;
struct msi_desc {scalar_t__ irq; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_device {int flags; int /*<<< orphan*/  mc_handle; TYPE_1__** irqs; struct fsl_mc_io* mc_io; } ;
struct fsl_mc_bus {int /*<<< orphan*/  scan_mutex; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct msi_desc* msi_desc; } ;

/* Variables and functions */
 scalar_t__ DPRC_IRQ_EVENT_CONTAINER_DESTROYED ; 
 scalar_t__ DPRC_IRQ_EVENT_OBJ_ADDED ; 
 scalar_t__ DPRC_IRQ_EVENT_OBJ_CREATED ; 
 scalar_t__ DPRC_IRQ_EVENT_OBJ_DESTROYED ; 
 scalar_t__ DPRC_IRQ_EVENT_OBJ_REMOVED ; 
 int ENXIO ; 
 unsigned int FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS ; 
 int FSL_MC_IS_DPRC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,unsigned int) ; 
 int FUNC3 (struct fsl_mc_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct fsl_mc_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (struct fsl_mc_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct fsl_mc_bus* FUNC9 (struct fsl_mc_device*) ; 
 struct fsl_mc_device* FUNC10 (struct device*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq_num, void *arg)
{
	int error;
	u32 status;
	struct device *dev = arg;
	struct fsl_mc_device *mc_dev = FUNC10(dev);
	struct fsl_mc_bus *mc_bus = FUNC9(mc_dev);
	struct fsl_mc_io *mc_io = mc_dev->mc_io;
	struct msi_desc *msi_desc = mc_dev->irqs[0]->msi_desc;

	FUNC0(dev, "DPRC IRQ %d triggered on CPU %u\n",
		irq_num, FUNC8());

	if (!(mc_dev->flags & FSL_MC_IS_DPRC))
		return IRQ_HANDLED;

	FUNC6(&mc_bus->scan_mutex);
	if (!msi_desc || msi_desc->irq != (u32)irq_num)
		goto out;

	status = 0;
	error = FUNC4(mc_io, 0, mc_dev->mc_handle, 0,
				    &status);
	if (error < 0) {
		FUNC1(dev,
			"dprc_get_irq_status() failed: %d\n", error);
		goto out;
	}

	error = FUNC3(mc_io, 0, mc_dev->mc_handle, 0,
				      status);
	if (error < 0) {
		FUNC1(dev,
			"dprc_clear_irq_status() failed: %d\n", error);
		goto out;
	}

	if (status & (DPRC_IRQ_EVENT_OBJ_ADDED |
		      DPRC_IRQ_EVENT_OBJ_REMOVED |
		      DPRC_IRQ_EVENT_CONTAINER_DESTROYED |
		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
		unsigned int irq_count;

		error = FUNC5(mc_dev, &irq_count);
		if (error < 0) {
			/*
			 * If the error is -ENXIO, we ignore it, as it indicates
			 * that the object scan was aborted, as we detected that
			 * an object was removed from the DPRC in the MC, while
			 * we were scanning the DPRC.
			 */
			if (error != -ENXIO) {
				FUNC1(dev, "dprc_scan_objects() failed: %d\n",
					error);
			}

			goto out;
		}

		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
			FUNC2(dev,
				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
		}
	}

out:
	FUNC7(&mc_bus->scan_mutex);
	return IRQ_HANDLED;
}