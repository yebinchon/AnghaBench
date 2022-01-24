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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct logic_pio_hwaddr {int dummy; } ;
struct hisi_lpc_dev {struct logic_pio_hwaddr* io_host; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 struct hisi_lpc_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct logic_pio_hwaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct acpi_device *acpi_device = FUNC0(dev);
	struct hisi_lpc_dev *lpcdev = FUNC1(dev);
	struct logic_pio_hwaddr *range = lpcdev->io_host;

	if (acpi_device)
		FUNC2(dev);
	else
		FUNC4(dev);

	FUNC3(range);

	return 0;
}