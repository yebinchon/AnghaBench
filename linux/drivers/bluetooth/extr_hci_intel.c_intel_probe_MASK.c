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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_device {scalar_t__ irq; struct gpio_desc* reset; int /*<<< orphan*/  list; struct platform_device* pdev; int /*<<< orphan*/  hu_lock; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  acpi_hci_intel_gpios ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct intel_device* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct gpio_desc*) ; 
 int /*<<< orphan*/  intel_device_list ; 
 int /*<<< orphan*/  intel_device_list_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct intel_device*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct intel_device *idev;
	int ret;

	idev = FUNC10(&pdev->dev, sizeof(*idev), GFP_KERNEL);
	if (!idev)
		return -ENOMEM;

	FUNC13(&idev->hu_lock);

	idev->pdev = pdev;

	ret = FUNC8(&pdev->dev, acpi_hci_intel_gpios);
	if (ret)
		FUNC3(&pdev->dev, "Unable to add GPIO mapping table\n");

	idev->reset = FUNC9(&pdev->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(idev->reset)) {
		FUNC4(&pdev->dev, "Unable to retrieve gpio\n");
		return FUNC1(idev->reset);
	}

	idev->irq = FUNC16(pdev, 0);
	if (idev->irq < 0) {
		struct gpio_desc *host_wake;

		FUNC4(&pdev->dev, "No IRQ, falling back to gpio-irq\n");

		host_wake = FUNC9(&pdev->dev, "host-wake", GPIOD_IN);
		if (FUNC0(host_wake)) {
			FUNC4(&pdev->dev, "Unable to retrieve IRQ\n");
			goto no_irq;
		}

		idev->irq = FUNC11(host_wake);
		if (idev->irq < 0) {
			FUNC4(&pdev->dev, "No corresponding irq for gpio\n");
			goto no_irq;
		}
	}

	/* Only enable wake-up/irq when controller is powered */
	FUNC6(&pdev->dev, true);
	FUNC7(&pdev->dev);

no_irq:
	FUNC17(pdev, idev);

	/* Place this instance on the device list */
	FUNC14(&intel_device_list_lock);
	FUNC12(&idev->list, &intel_device_list);
	FUNC15(&intel_device_list_lock);

	FUNC5(&pdev->dev, "registered, gpio(%d)/irq(%d).\n",
		 FUNC2(idev->reset), idev->irq);

	return 0;
}