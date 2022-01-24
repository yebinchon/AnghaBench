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
struct rpi_firmware {int dummy; } ;
struct raspberrypi_clk {int /*<<< orphan*/  cpufreq; struct rpi_firmware* firmware; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct raspberrypi_clk* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct raspberrypi_clk*) ; 
 int FUNC6 (struct raspberrypi_clk*) ; 
 int FUNC7 (struct raspberrypi_clk*) ; 
 struct rpi_firmware* FUNC8 (struct device_node*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device_node *firmware_node;
	struct device *dev = &pdev->dev;
	struct rpi_firmware *firmware;
	struct raspberrypi_clk *rpi;
	int ret;

	firmware_node = FUNC2(NULL, NULL,
					"raspberrypi,bcm2835-firmware");
	if (!firmware_node) {
		FUNC0(dev, "Missing firmware node\n");
		return -ENOENT;
	}

	firmware = FUNC8(firmware_node);
	FUNC3(firmware_node);
	if (!firmware)
		return -EPROBE_DEFER;

	rpi = FUNC1(dev, sizeof(*rpi), GFP_KERNEL);
	if (!rpi)
		return -ENOMEM;

	rpi->dev = dev;
	rpi->firmware = firmware;
	FUNC5(pdev, rpi);

	ret = FUNC6(rpi);
	if (ret) {
		FUNC0(dev, "Failed to initialize pllb, %d\n", ret);
		return ret;
	}

	ret = FUNC7(rpi);
	if (ret)
		return ret;

	rpi->cpufreq = FUNC4(dev, "raspberrypi-cpufreq",
						     -1, NULL, 0);

	return 0;
}