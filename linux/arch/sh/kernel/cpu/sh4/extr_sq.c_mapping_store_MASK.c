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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(const char *buf, size_t count)
{
	unsigned long base = 0, len = 0;

	FUNC3(buf, "%lx %lx", &base, &len);
	if (!base)
		return -EIO;

	if (FUNC0(len)) {
		int ret = FUNC1(base, len, "Userspace", PAGE_SHARED);
		if (ret < 0)
			return ret;
	} else
		FUNC2(base);

	return count;
}