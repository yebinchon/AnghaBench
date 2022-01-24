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
 unsigned long HI_OBP_ADDRESS ; 
 unsigned long LOW_OBP_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(unsigned long start, unsigned long end)
{
	if (start < HI_OBP_ADDRESS && end > LOW_OBP_ADDRESS) {
		if (start < LOW_OBP_ADDRESS) {
			FUNC1(start, LOW_OBP_ADDRESS);
			FUNC0(start, LOW_OBP_ADDRESS);
		}
		if (end > HI_OBP_ADDRESS) {
			FUNC1(HI_OBP_ADDRESS, end);
			FUNC0(HI_OBP_ADDRESS, end);
		}
	} else {
		FUNC1(start, end);
		FUNC0(start, end);
	}
}