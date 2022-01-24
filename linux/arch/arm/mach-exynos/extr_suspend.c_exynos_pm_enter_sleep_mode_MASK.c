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
 int /*<<< orphan*/  EXYNOS_SLEEP_MAGIC ; 
 int /*<<< orphan*/  S5P_INFORM1 ; 
 int /*<<< orphan*/  SYS_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Set value of power down register for sleep mode */
	FUNC0(SYS_SLEEP);
	FUNC1(EXYNOS_SLEEP_MAGIC, S5P_INFORM1);
}