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
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GSTATUS2 ; 
 unsigned long S3C2410_GSTATUS2_OFFRESET ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long tmp;

	/* unset the return-from-sleep flag, to ensure reset */

	tmp = FUNC1(S3C2410_GSTATUS2);
	tmp &= S3C2410_GSTATUS2_OFFRESET;
	FUNC2(tmp, S3C2410_GSTATUS2);

	if (FUNC5()) {
		FUNC4(FUNC0(2), GPIOF_OUT_INIT_LOW, NULL);
		FUNC3(FUNC0(2));
	}
}