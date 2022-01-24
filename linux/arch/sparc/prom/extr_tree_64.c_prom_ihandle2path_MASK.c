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

int FUNC1(int handle, char *buffer, int bufsize)
{
	unsigned long args[7];

	args[0] = (unsigned long) "instance-to-path";
	args[1] = 3;
	args[2] = 1;
	args[3] = (unsigned int) handle;
	args[4] = (unsigned long) buffer;
	args[5] = bufsize;
	args[6] = (unsigned long) -1;

	FUNC0(args);

	return (int) args[6];
}