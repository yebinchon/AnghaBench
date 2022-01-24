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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EP93XX_SYSCON_DEVCFG_GONK ; 
 int EP93XX_SYSCON_DEVCFG_KEYS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct platform_device *pdev)
{
	int i;

	for (i = 0; i < 8; i++) {
		FUNC3(FUNC0(i));
		FUNC3(FUNC1(i));
	}

	/* Disable the keypad controller; GPIO ports C and D used for GPIO */
	FUNC2(EP93XX_SYSCON_DEVCFG_KEYS |
			       EP93XX_SYSCON_DEVCFG_GONK);
}