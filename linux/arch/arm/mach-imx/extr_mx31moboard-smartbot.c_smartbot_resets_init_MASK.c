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
 int /*<<< orphan*/  DSPIC_RST_B ; 
 int /*<<< orphan*/  POWER_EN ; 
 int /*<<< orphan*/  TRSLAT_RST_B ; 
 int /*<<< orphan*/  TRSLAT_SRC_CHOICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!FUNC2(POWER_EN, "power-enable")) {
		FUNC0(POWER_EN, 0);
		FUNC1(POWER_EN, false);
	}

	if (!FUNC2(DSPIC_RST_B, "dspic-rst")) {
		FUNC0(DSPIC_RST_B, 0);
		FUNC1(DSPIC_RST_B, false);
	}

	if (!FUNC2(TRSLAT_RST_B, "translator-rst")) {
		FUNC0(TRSLAT_RST_B, 0);
		FUNC1(TRSLAT_RST_B, false);
	}

	if (!FUNC2(TRSLAT_SRC_CHOICE, "translator-src-choice")) {
		FUNC0(TRSLAT_SRC_CHOICE, 0);
		FUNC1(TRSLAT_SRC_CHOICE, false);
	}
}