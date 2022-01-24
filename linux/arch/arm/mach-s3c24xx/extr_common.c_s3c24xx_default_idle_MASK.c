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
 int /*<<< orphan*/  S3C2410_CLKCON ; 
 unsigned long S3C2410_CLKCON_IDLE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long tmp = 0;
	int i;

	/* idle the system by using the idle mode which will wait for an
	 * interrupt to happen before restarting the system.
	 */

	/* Warning: going into idle state upsets jtag scanning */

	FUNC1(FUNC0(S3C2410_CLKCON) | S3C2410_CLKCON_IDLE,
		     S3C2410_CLKCON);

	/* the samsung port seems to do a loop and then unset idle.. */
	for (i = 0; i < 50; i++)
		tmp += FUNC0(S3C2410_CLKCON); /* ensure loop not optimised out */

	/* this bit is not cleared on re-start... */

	FUNC1(FUNC0(S3C2410_CLKCON) & ~S3C2410_CLKCON_IDLE,
		     S3C2410_CLKCON);
}