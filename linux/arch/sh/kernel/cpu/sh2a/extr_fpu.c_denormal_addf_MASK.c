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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(int hx, int hy)
{
	unsigned int ix, iy;
	int sign;

	if ((hx ^ hy) & 0x80000000) {
		sign = hx & 0x80000000;
		ix = hx & 0x7fffffff;
		iy = hy & 0x7fffffff;
		if (iy < 0x00800000) {
			ix = FUNC1(ix, iy);
			if ((int) ix < 0) {
				ix = -ix;
				sign ^= 0x80000000;
			}
		} else {
			ix = FUNC1(iy, ix);
			sign ^= 0x80000000;
		}
	} else {
		sign = hx & 0x80000000;
		ix = hx & 0x7fffffff;
		iy = hy & 0x7fffffff;
		if (iy < 0x00800000)
			ix = FUNC0(ix, iy);
		else
			ix = FUNC0(iy, ix);
	}

	return sign | ix;
}