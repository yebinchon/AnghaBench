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
 int /*<<< orphan*/  DSPICS_RST_B ; 
 int /*<<< orphan*/  TRSLAT_RST_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!FUNC2(TRSLAT_RST_B, "translator-rst")) {
		FUNC0(TRSLAT_RST_B, 0);
		FUNC1(TRSLAT_RST_B, false);
	}

	if (!FUNC2(DSPICS_RST_B, "dspics-rst")) {
		FUNC0(DSPICS_RST_B, 0);
		FUNC1(DSPICS_RST_B, false);
	}
}