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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,size_t) ; 

size_t FUNC1(const uint8_t *str, size_t str_len)
{
	size_t offset = 0;

	while (offset < str_len) {
		int length = FUNC0(str + offset, str_len - offset);

		if (length < 0)
			break;

		offset += length;
	}

	return offset;
}