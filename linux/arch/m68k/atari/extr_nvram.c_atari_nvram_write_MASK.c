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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char,scalar_t__) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ssize_t FUNC5(char *buf, size_t count, loff_t *ppos)
{
	char *p = buf;
	loff_t i;

	FUNC3(&rtc_lock);
	if (!FUNC0()) {
		FUNC4(&rtc_lock);
		return -EIO;
	}
	for (i = *ppos; count > 0 && i < NVRAM_BYTES; --count, ++i, ++p)
		FUNC2(*p, i);
	FUNC1();
	FUNC4(&rtc_lock);

	*ppos = i;
	return p - buf;
}