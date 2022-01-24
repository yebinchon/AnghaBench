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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPIO_MAGICIAN_FLASH_VPP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret = FUNC2(EGPIO_MAGICIAN_FLASH_VPP, "flash Vpp enable");

	if (ret) {
		FUNC3("Cannot request flash enable GPIO (%i)\n", ret);
		return ret;
	}

	ret = FUNC0(EGPIO_MAGICIAN_FLASH_VPP, 1);
	if (ret) {
		FUNC3("Cannot set direction for flash enable (%i)\n", ret);
		FUNC1(EGPIO_MAGICIAN_FLASH_VPP);
	}

	return ret;
}