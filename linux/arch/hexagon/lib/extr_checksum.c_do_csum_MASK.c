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
typedef  int u64 ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int,int,scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int,int) ; 
 scalar_t__ FUNC5 (int,int,int,int) ; 

unsigned int FUNC6(const void *voidptr, int len)
{
	u64 sum0, sum1, x0, x1, *ptr8_o, *ptr8_e, *ptr8;
	int i, start, mid, end, mask;
	const char *ptr = voidptr;
	unsigned short *ptr2;
	unsigned int *ptr4;

	if (len <= 0)
		return 0;

	start = 0xF & (16-(((int) ptr) & 0xF)) ;
	mask  = 0x7fffffffUL >> FUNC2(len);
	start = start & mask ;

	mid = len - start;
	end = mid & 0xF;
	mid = mid>>4;
	sum0 = mid << 18;
	sum1 = 0;

	if (start & 1)
		sum0 += (u64) (ptr[0] << 8);
	ptr2 = (unsigned short *) &ptr[start & 1];
	if (start & 2)
		sum1 += (u64) ptr2[0];
	ptr4 = (unsigned int *) &ptr[start & 3];
	if (start & 4) {
		sum0 = FUNC1(sum0,
			FUNC4(0, 0, 1, 1)^((u64)ptr4[0]),
			FUNC5(0, 0, 1, 1));
		sum0 += FUNC5(0, 0, 1, 0);
	}
	ptr8 = (u64 *) &ptr[start & 7];
	if (start & 8) {
		sum1 = FUNC1(sum1,
			FUNC4(1, 1, 1, 1)^(ptr8[0]),
			FUNC5(1, 1, 1, 1));
		sum1 += FUNC3(0, 0, 1, 0);
	}
	ptr8_o = (u64 *) (ptr + start);
	ptr8_e = (u64 *) (ptr + start + 8);

	if (mid) {
		x0 = *ptr8_e; ptr8_e += 2;
		x1 = *ptr8_o; ptr8_o += 2;
		if (mid > 1)
			for (i = 0; i < mid-1; i++) {
				sum0 = FUNC1(sum0,
					x0^FUNC4(1, 1, 1, 1),
					FUNC5(1, 1, 1, 1));
				sum1 = FUNC1(sum1,
					x1^FUNC4(1, 1, 1, 1),
					FUNC5(1, 1, 1, 1));
				x0 = *ptr8_e; ptr8_e += 2;
				x1 = *ptr8_o; ptr8_o += 2;
			}
		sum0 = FUNC1(sum0, x0^FUNC4(1, 1, 1, 1),
			FUNC5(1, 1, 1, 1));
		sum1 = FUNC1(sum1, x1^FUNC4(1, 1, 1, 1),
			FUNC5(1, 1, 1, 1));
	}

	ptr4 = (unsigned int *) &ptr[start + (mid * 16) + (end & 8)];
	if (end & 4) {
		sum1 = FUNC1(sum1,
			FUNC4(0, 0, 1, 1)^((u64)ptr4[0]),
			FUNC5(0, 0, 1, 1));
		sum1 += FUNC5(0, 0, 1, 0);
	}
	ptr2 = (unsigned short *) &ptr[start + (mid * 16) + (end & 12)];
	if (end & 2)
		sum0 += (u64) ptr2[0];

	if (end & 1)
		sum1 += (u64) ptr[start + (mid * 16) + (end & 14)];

	ptr8 = (u64 *) &ptr[start + (mid * 16)];
	if (end & 8) {
		sum0 = FUNC1(sum0,
			FUNC4(1, 1, 1, 1)^(ptr8[0]),
			FUNC5(1, 1, 1, 1));
		sum0 += FUNC3(0, 0, 1, 0);
	}
	sum0 = FUNC0((sum0+sum1)^FUNC4(0, 0, 0, 1),
		FUNC5(0, 0, 1, 1));
	sum0 += FUNC4(0, 0, 0, 1);
	sum0 = FUNC0(sum0, FUNC5(0, 0, 1, 1));

	if (start & 1)
		sum0 = (sum0 << 8) | (0xFF & (sum0 >> 8));

	return 0xFFFF & sum0;
}