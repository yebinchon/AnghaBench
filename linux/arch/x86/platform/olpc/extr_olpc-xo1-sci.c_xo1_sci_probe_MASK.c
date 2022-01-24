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
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CS5536_GPIOM6_PME_EN ; 
 int CS5536_GPIOM7_PME_EN ; 
 scalar_t__ CS5536_PM_GPE0_EN ; 
 scalar_t__ CS5536_PM_GPE0_STS ; 
 int /*<<< orphan*/  EC_SCI_SRC_ALL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ acpi_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct platform_device*) ; 
 int FUNC16 () ; 
 int FUNC17 () ; 
 int FUNC18 (struct platform_device*) ; 
 int FUNC19 (struct platform_device*) ; 
 int FUNC20 (struct platform_device*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct resource *res;
	int r;

	/* don't run on non-XOs */
	if (!FUNC7())
		return -ENODEV;

	r = FUNC8(pdev);
	if (r)
		return r;

	res = FUNC11(pdev, IORESOURCE_IO, 0);
	if (!res) {
		FUNC1(&pdev->dev, "can't fetch device resource info\n");
		return -EIO;
	}
	acpi_base = res->start;

	r = FUNC19(pdev);
	if (r)
		return r;

	r = FUNC15(pdev);
	if (r)
		goto err_ebook;

	r = FUNC18(pdev);
	if (r)
		goto err_lid;

	r = FUNC17();
	if (r)
		goto err_lidevt;

	r = FUNC16();
	if (r)
		goto err_ecsci;

	/* Enable PME generation for EC-generated events */
	FUNC10(CS5536_GPIOM6_PME_EN | CS5536_GPIOM7_PME_EN,
		acpi_base + CS5536_PM_GPE0_EN);

	/* Clear pending events */
	FUNC10(0xffffffff, acpi_base + CS5536_PM_GPE0_STS);
	FUNC12(false);

	/* Initial sync */
	FUNC13();
	FUNC0();
	FUNC14();

	r = FUNC20(pdev);
	if (r)
		goto err_sci;

	/* Enable all EC events */
	FUNC9(EC_SCI_SRC_ALL);

	return r;

err_sci:
	FUNC3();
err_ecsci:
	FUNC4();
err_lidevt:
	FUNC5();
err_lid:
	FUNC2();
err_ebook:
	FUNC6();
	return r;
}