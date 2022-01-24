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
struct kcs_bmc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kcs_bmc*) ; 
 int /*<<< orphan*/  npcm7xx_kcs_irq ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kcs_bmc *kcs_bmc,
				  struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int irq;

	irq = FUNC2(pdev, 0);
	if (irq < 0)
		return irq;

	return FUNC1(dev, irq, npcm7xx_kcs_irq, IRQF_SHARED,
				FUNC0(dev), kcs_bmc);
}