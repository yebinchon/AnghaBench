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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int) ; 
 int PLLB_ENSAT ; 
 int PLLB_OUTDIV ; 
 int PLLB_REFDIV ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  SEC_CTRL_PLLB_CTRL0 ; 
 int /*<<< orphan*/  SEC_CTRL_PLLB_DIV_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_REF600 ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_USBHS ; 
 int /*<<< orphan*/  SYS_CTRL_REF300_DIV ; 
 int /*<<< orphan*/  SYS_CTRL_RST_PLLB ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHS ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHSPHYA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHSPHYB ; 
 int /*<<< orphan*/  SYS_CTRL_USBHSPHY_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_USB_CTRL ; 
 unsigned long USBHSPHY_TEST_ADD ; 
 unsigned long USBHSPHY_TEST_CLK ; 
 int USBHSPHY_TEST_DIN ; 
 unsigned long USB_CLK_INTERNAL ; 
 unsigned long USB_INT_CLK_PLLB ; 
 unsigned long USB_INT_CLK_REF300 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
#ifdef CONFIG_USB_PLLB_CLK
	reset_block(SYS_CTRL_RST_PLLB, 0);
	enable_clock(SYS_CTRL_CLK_REF600);

	writel((1 << PLLB_ENSAT) | (1 << PLLB_OUTDIV) | (2 << PLLB_REFDIV),
			SEC_CTRL_PLLB_CTRL0);
	/* 600MHz pllb divider for 12MHz */
	writel(PLLB_DIV_INT(50) | PLLB_DIV_FRAC(0), SEC_CTRL_PLLB_DIV_CTRL);
#else
	/* ref 300 divider for 12MHz */
	FUNC6(FUNC3(25) | FUNC2(0), SYS_CTRL_REF300_DIV);
#endif

	/* Ensure the USB block is properly reset */
	FUNC5(SYS_CTRL_RST_USBHS, 1);
	FUNC5(SYS_CTRL_RST_USBHS, 0);

	FUNC5(SYS_CTRL_RST_USBHSPHYA, 1);
	FUNC5(SYS_CTRL_RST_USBHSPHYA, 0);

	FUNC5(SYS_CTRL_RST_USBHSPHYB, 1);
	FUNC5(SYS_CTRL_RST_USBHSPHYB, 0);

	/* Force the high speed clock to be generated all the time, via serial
	 programming of the USB HS PHY */
	FUNC6((2UL << USBHSPHY_TEST_ADD) |
		   (0xe0UL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

	FUNC6((1UL << USBHSPHY_TEST_CLK) |
		   (2UL << USBHSPHY_TEST_ADD) |
		   (0xe0UL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

	FUNC6((0xfUL << USBHSPHY_TEST_ADD) |
		   (0xaaUL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

	FUNC6((1UL << USBHSPHY_TEST_CLK) |
		   (0xfUL << USBHSPHY_TEST_ADD) |
		   (0xaaUL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

#ifdef CONFIG_USB_PLLB_CLK /* use pllb clock */
		writel(USB_CLK_INTERNAL | USB_INT_CLK_PLLB, SYS_CTRL_USB_CTRL);
#else /* use ref300 derived clock */
		FUNC6(USB_CLK_INTERNAL | USB_INT_CLK_REF300, SYS_CTRL_USB_CTRL);
#endif
	/* Enable the clock to the USB block */
	FUNC4(SYS_CTRL_CLK_USBHS);

	return 0;
}