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
 int /*<<< orphan*/  CONFIG_KASAN ; 
 int /*<<< orphan*/  DIAG_STAT_X308 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(unsigned long subcode, void *addr)
{
	if (FUNC0(CONFIG_KASAN))
		FUNC1(0x04); /* enable DAT */
	FUNC3(DIAG_STAT_X308);
	return FUNC2(subcode, addr);
}