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
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ NVRAM_BYTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ssize_t FUNC4(char *buf, size_t count, loff_t *ppos)
{
	char *p = buf;
	loff_t i;

	FUNC2(&rtc_lock);
	if (!FUNC0()) {
		FUNC3(&rtc_lock);
		return -EIO;
	}
	for (i = *ppos; count > 0 && i < NVRAM_BYTES; --count, ++i, ++p)
		*p = FUNC1(i);
	FUNC3(&rtc_lock);

	*ppos = i;
	return p - buf;
}