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
 int /*<<< orphan*/  DIAG_STAT_X204 ; 
 unsigned long FUNC0 (unsigned long*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(unsigned long subcode, unsigned long size, void *addr)
{
	FUNC1(DIAG_STAT_X204);
	size = FUNC0(&subcode, size, addr);
	if (subcode)
		return -1;
	return size;
}