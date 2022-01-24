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
typedef  int uintmax_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 

uintmax_t FUNC1(const unsigned char *bufp, size_t *varint_len)
{
	const unsigned char *buf = bufp;
	unsigned char c = *buf++;
	uintmax_t val = c & 127;
	while (c & 128) {
		val += 1;
		if (!val || FUNC0(val, 7)) {
			/* This is not a valid varint_len, so it signals
			   the error */
			*varint_len = 0;
			return 0; /* overflow */
		}
		c = *buf++;
		val = (val << 7) + (c & 127);
	}
	*varint_len = buf - bufp;
	return val;
}