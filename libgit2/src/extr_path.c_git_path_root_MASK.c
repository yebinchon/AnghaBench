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
 scalar_t__ FUNC0 (char const*) ; 

int FUNC1(const char *path)
{
	int offset = 0;

	/* Does the root of the path look like a windows drive ? */
	if (FUNC0(path))
		offset += 2;

#ifdef GIT_WIN32
	/* Are we dealing with a windows network path? */
	else if ((path[0] == '/' && path[1] == '/' && path[2] != '/') ||
		(path[0] == '\\' && path[1] == '\\' && path[2] != '\\'))
	{
		offset += 2;

		/* Skip the computer name segment */
		while (path[offset] && path[offset] != '/' && path[offset] != '\\')
			offset++;
	}

	if (path[offset] == '\\')
		return offset;
#endif

	if (path[offset] == '/')
		return offset;

	return -1;	/* Not a real error - signals that path is not rooted */
}