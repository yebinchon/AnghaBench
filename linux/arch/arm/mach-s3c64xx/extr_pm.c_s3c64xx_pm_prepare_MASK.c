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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S3C64XX_INFORM0 ; 
 int /*<<< orphan*/  S3C64XX_PWR_CFG ; 
 int /*<<< orphan*/  S3C64XX_WAKEUP_STAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c_cpu_resume ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wake_irqs ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC4(S3C64XX_PWR_CFG,
			      wake_irqs, FUNC0(wake_irqs));

	/* store address of resume. */
	FUNC3(FUNC1(s3c_cpu_resume), S3C64XX_INFORM0);

	/* ensure previous wakeup state is cleared before sleeping */
	FUNC3(FUNC2(S3C64XX_WAKEUP_STAT), S3C64XX_WAKEUP_STAT);
}