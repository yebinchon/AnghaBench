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
struct resource {int dummy; } ;
struct tpm_info {int irq; struct resource res; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct platform_device* force_pdev ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tpm_info*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct tpm_info tpm_info = {};
	struct resource *res;

	res = FUNC2(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(&pdev->dev, "no memory resource defined\n");
		return -ENODEV;
	}
	tpm_info.res = *res;

	tpm_info.irq = FUNC1(pdev, 0);
	if (tpm_info.irq <= 0) {
		if (pdev != force_pdev)
			tpm_info.irq = -1;
		else
			/* When forcing auto probe the IRQ */
			tpm_info.irq = 0;
	}

	return FUNC3(&pdev->dev, &tpm_info);
}