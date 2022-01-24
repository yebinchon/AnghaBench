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
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int FUNC0 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int FUNC2(const char *name)
{
	int fd;

	fd = FUNC0(name, O_RDWR|O_CREAT|O_EXCL, 0600);
	if (0 <= fd)
		return fd;

	/* slow path */
	FUNC1(name);
	return FUNC0(name, O_RDWR|O_CREAT|O_EXCL, 0600);
}