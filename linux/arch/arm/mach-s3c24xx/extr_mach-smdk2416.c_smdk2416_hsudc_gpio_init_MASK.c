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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  S3C2416_MISCCR_SEL_SUSPND ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_UP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC5(FUNC1(14), S3C_GPIO_PULL_UP);
	FUNC5(FUNC0(2), S3C_GPIO_PULL_NONE);
	FUNC4(FUNC1(14), FUNC2(1));
	FUNC3(S3C2416_MISCCR_SEL_SUSPND, 0);
}