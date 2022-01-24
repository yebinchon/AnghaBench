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
 int /*<<< orphan*/  AT91C_BOOT_ADDR ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int IMAGE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void)
{
	int	sts;
	if((sts = FUNC0()) != SUCCESS) return sts;
//	printf("\n");
//	printf("PLLA[180MHz], MCK[60Mhz] ==> Start UBOOT\n");
	if (FUNC1())
	{
		FUNC3("Jump");
		FUNC2(AT91C_BOOT_ADDR);
//		LED_blink(0);
	}
	return	IMAGE_ERROR;
}