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
 int /*<<< orphan*/  callback_init_done ; 
 long FUNC0 (int /*<<< orphan*/ ,char const*,long) ; 

long
FUNC1(const char *str, long len)
{
	long remaining, written;

	if (!callback_init_done)
		return len;

	for (remaining = len; remaining > 0; remaining -= written)
	{
		written = FUNC0(0, str, remaining);
		written &= 0xffffffff;
		str += written;
	}
	return len;
}