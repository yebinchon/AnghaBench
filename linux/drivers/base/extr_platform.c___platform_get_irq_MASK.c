#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int flags; int start; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct TYPE_5__ {unsigned int num_irqs; int* irqs; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__ archdata; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  CONFIG_OF_IRQ ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int IORESOURCE_BITS ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,struct resource*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 struct irq_data* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*,int) ; 
 int FUNC8 (scalar_t__,unsigned int) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev, unsigned int num)
{
#ifdef CONFIG_SPARC
	/* sparc does not have irqs represented as IORESOURCE_IRQ resources */
	if (!dev || num >= dev->archdata.num_irqs)
		return -ENXIO;
	return dev->archdata.irqs[num];
#else
	struct resource *r;
	if (FUNC2(CONFIG_OF_IRQ) && dev->dev.of_node) {
		int ret;

		ret = FUNC8(dev->dev.of_node, num);
		if (ret > 0 || ret == -EPROBE_DEFER)
			return ret;
	}

	r = FUNC9(dev, IORESOURCE_IRQ, num);
	if (FUNC5(&dev->dev)) {
		if (r && r->flags & IORESOURCE_DISABLED) {
			int ret;

			ret = FUNC4(FUNC1(&dev->dev), num, r);
			if (ret)
				return ret;
		}
	}

	/*
	 * The resources may pass trigger flags to the irqs that need
	 * to be set up. It so happens that the trigger flags for
	 * IORESOURCE_BITS correspond 1-to-1 to the IRQF_TRIGGER*
	 * settings.
	 */
	if (r && r->flags & IORESOURCE_BITS) {
		struct irq_data *irqd;

		irqd = FUNC6(r->start);
		if (!irqd)
			return -ENXIO;
		FUNC7(irqd, r->flags & IORESOURCE_BITS);
	}

	if (r)
		return r->start;

	/*
	 * For the index 0 interrupt, allow falling back to GpioInt
	 * resources. While a device could have both Interrupt and GpioInt
	 * resources, making this fallback ambiguous, in many common cases
	 * the device will only expose one IRQ, and this fallback
	 * allows a common code path across either kind of resource.
	 */
	if (num == 0 && FUNC5(&dev->dev)) {
		int ret = FUNC3(FUNC0(&dev->dev), num);

		/* Our callers expect -ENXIO for missing IRQs. */
		if (ret >= 0 || ret == -EPROBE_DEFER)
			return ret;
	}

	return -ENXIO;
#endif
}