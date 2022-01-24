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
typedef  int uint32_t ;

/* Variables and functions */

uint32_t FUNC0(uint32_t csum, void *buf, unsigned long len)
{
	signed char *p = buf;

	while (len--) {
		int i;

		csum ^= *p++;
		for (i = 0; i < 8; i++)
			csum = (csum >> 1) ^ ((csum & 1) ? 0xedb88320ul : 0);
	}

	return csum;
}