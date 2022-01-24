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
 int /*<<< orphan*/  M41T81REG_SC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(void)
{
	unsigned int tmp;

	/* enable chip if it is not enabled yet */
	tmp = FUNC0(M41T81REG_SC);
	FUNC1(M41T81REG_SC, tmp & 0x7f);

	return FUNC0(M41T81REG_SC) != -1;
}