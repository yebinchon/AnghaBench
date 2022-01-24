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
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 scalar_t__ prom_stdout ; 

__attribute__((used)) static int FUNC1(const char *buf, int len)
{
	unsigned long args[7];
	int ret;

	args[0] = (unsigned long) "write";
	args[1] = 3;
	args[2] = 1;
	args[3] = (unsigned int) prom_stdout;
	args[4] = (unsigned long) buf;
	args[5] = (unsigned int) len;
	args[6] = (unsigned long) -1;

	FUNC0(args);

	ret = (int) args[6];
	if (ret < 0)
		return -1;
	return ret;
}