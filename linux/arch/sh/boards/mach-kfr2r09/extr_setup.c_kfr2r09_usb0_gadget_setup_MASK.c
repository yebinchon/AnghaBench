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
 int ENODEV ; 
 int /*<<< orphan*/  GPIO_FN_PDSTATUS ; 
 int /*<<< orphan*/  GPIO_PTN4 ; 
 int /*<<< orphan*/  GPIO_PTV6 ; 
 int PORT_MSELCRB ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(void)
{
	int plugged_in;

	FUNC7(GPIO_PTN4, NULL); /* USB_DET */
	FUNC4(GPIO_PTN4);
	plugged_in = FUNC6(GPIO_PTN4);
	if (!plugged_in)
		return -ENODEV; /* no cable plugged in */

	if (FUNC8() != 0)
		return -ENODEV; /* unable to configure using i2c */

	FUNC1((FUNC0(PORT_MSELCRB) & ~0xc000) | 0x8000, PORT_MSELCRB);
	FUNC7(GPIO_FN_PDSTATUS, NULL); /* R-standby disables USB clock */
	FUNC7(GPIO_PTV6, NULL); /* USBCLK_ON */
	FUNC5(GPIO_PTV6, 1); /* USBCLK_ON = H */
	FUNC9(20); /* wait 20ms to let the clock settle */
	FUNC2(FUNC3(NULL, "usb0"));
	FUNC1(0x0600, 0xa40501d4);

	return 0;
}