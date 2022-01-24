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
 unsigned int ARSR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

void FUNC2(unsigned int mask)
{
	if (FUNC0())
		FUNC1(mask);
	else {
		/* RESET_STATUS_* has a 1:1 mapping with ARSR */
		ARSR = mask;
	}
}