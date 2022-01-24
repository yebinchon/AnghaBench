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
struct s3c2410_hcd_info {int dummy; } ;

/* Variables and functions */
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct s3c2410_hcd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct s3c2410_hcd_info*) ; 
 int /*<<< orphan*/  smartq_usb_host_ocirq ; 

__attribute__((used)) static void FUNC6(struct s3c2410_hcd_info *info, int on)
{
	int ret;

	/* This isn't present on a SmartQ 5 board */
	if (FUNC3())
		return;

	if (on) {
		ret = FUNC5(FUNC2(FUNC0(10)),
				  smartq_usb_host_ocirq,
				  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				  "USB host overcurrent", info);
		if (ret != 0)
			FUNC4("failed to request usb oc irq: %d\n", ret);
	} else {
		FUNC1(FUNC2(FUNC0(10)), info);
	}
}