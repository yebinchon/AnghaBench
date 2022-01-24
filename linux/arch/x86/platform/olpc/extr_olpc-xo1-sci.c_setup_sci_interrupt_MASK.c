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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS5536_PIC_INT_SEL1 ; 
 int /*<<< orphan*/  CS5536_PIC_INT_SEL2 ; 
 scalar_t__ CS5536_PM1_STS ; 
 int CS5536_PM_PWRBTN ; 
 int CS5536_PM_RTC ; 
 int /*<<< orphan*/  DRV_NAME ; 
 scalar_t__ acpi_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int sci_irq ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  xo1_sci_intr ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	u32 lo, hi;
	u32 sts;
	int r;

	FUNC6(0x51400020, lo, hi);
	sci_irq = (lo >> 20) & 15;

	if (sci_irq) {
		FUNC1(&pdev->dev, "SCI is mapped to IRQ %d\n", sci_irq);
	} else {
		/* Zero means masked */
		FUNC1(&pdev->dev, "SCI unmapped. Mapping to IRQ 3\n");
		sci_irq = 3;
		lo |= 0x00300000;
		FUNC8(0x51400020, lo);
	}

	/* Select level triggered in PIC */
	if (sci_irq < 8) {
		lo = FUNC2(CS5536_PIC_INT_SEL1);
		lo |= 1 << sci_irq;
		FUNC4(lo, CS5536_PIC_INT_SEL1);
	} else {
		lo = FUNC2(CS5536_PIC_INT_SEL2);
		lo |= 1 << (sci_irq - 8);
		FUNC4(lo, CS5536_PIC_INT_SEL2);
	}

	/* Enable interesting SCI events, and clear pending interrupts */
	sts = FUNC3(acpi_base + CS5536_PM1_STS);
	FUNC5(((CS5536_PM_PWRBTN | CS5536_PM_RTC) << 16) | 0xffff,
	     acpi_base + CS5536_PM1_STS);

	r = FUNC7(sci_irq, xo1_sci_intr, 0, DRV_NAME, pdev);
	if (r)
		FUNC0(&pdev->dev, "can't request interrupt\n");

	return r;
}