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
 int FUNC0 (char const) ; 

int FUNC1(unsigned char *binary, const char *hex, size_t len)
{
	for (; len; len--, hex += 2) {
		unsigned int val = (FUNC0(hex[0]) << 4) | FUNC0(hex[1]);

		if (val & ~0xff)
			return -1;
		*binary++ = val;
	}
	return 0;
}