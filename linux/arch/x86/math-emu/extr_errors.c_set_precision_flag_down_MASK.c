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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EX_Precision ; 
 int /*<<< orphan*/  SW_C1 ; 
 int /*<<< orphan*/  SW_Precision ; 
 int control_word ; 
 int /*<<< orphan*/  partial_status ; 

void FUNC1(void)
{
	if (control_word & CW_Precision) {	/* The masked response */
		partial_status &= ~SW_C1;
		partial_status |= SW_Precision;
	} else
		FUNC0(EX_Precision);
}