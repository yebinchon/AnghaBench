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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MX21ADS_IO_SD_WP ; 
 int /*<<< orphan*/  MX21ADS_MMC_CD ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, irq_handler_t detect_irq,
	void *data)
{
	int ret;

	ret = FUNC0(MX21ADS_IO_SD_WP, "mmc-ro");
	if (ret)
		return ret;

	return FUNC2(FUNC1(MX21ADS_MMC_CD), detect_irq,
			   IRQF_TRIGGER_FALLING, "mmc-detect", data);
}