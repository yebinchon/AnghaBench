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
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(int* lo, int* hi)
{
	if (*hi > 0) {
		*hi = FUNC0(*hi, 500);
		*hi = FUNC1(*hi, 1000000);
		if (*lo <= 0)
			*lo = *hi - 100;
		else {
			*lo = FUNC1(*lo, *hi - 100);
			*lo = FUNC0(*lo, 100);
		}
	} else {
		*hi = -1;
		*lo = -1;
	}
}