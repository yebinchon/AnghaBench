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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 

uint64_t FUNC2(void)
{
	static uint64_t offset;
	if (offset > 1) {
		/* initialization succeeded, return offset + high res time */
		return offset + FUNC1();
	} else if (offset == 1) {
		/* initialization failed, fall back to gettimeofday */
		return FUNC0();
	} else {
		/* initialize offset if high resolution timer works */
		uint64_t now = FUNC0();
		uint64_t highres = FUNC1();
		if (highres)
			offset = now - highres;
		else
			offset = 1;
		return now;
	}
}