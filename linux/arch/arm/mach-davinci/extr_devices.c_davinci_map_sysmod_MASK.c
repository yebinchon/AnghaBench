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
 int /*<<< orphan*/  DAVINCI_SYSTEM_MODULE_BASE ; 
 int /*<<< orphan*/  davinci_sysmod_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	davinci_sysmod_base = FUNC1(DAVINCI_SYSTEM_MODULE_BASE,
					      0x800);
	/*
	 * Throw a bug since a lot of board initialization code depends
	 * on system module availability. ioremap() failing this early
	 * need careful looking into anyway.
	 */
	FUNC0(!davinci_sysmod_base);
}