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
 int CW_Precision ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SW_C1 ; 
 int control_word ; 
 int partial_status ; 

int FUNC1(int flags)
{
	if (control_word & CW_Precision) {
		partial_status &= ~(SW_C1 & flags);
		partial_status |= flags;	/* The masked response */
		return 0;
	} else {
		FUNC0(flags);
		return 1;
	}
}