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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 size_t FUNC1 (char const*) ; 

const char *FUNC2(const char *path)
{
	size_t len;
	ssize_t i;

	FUNC0(path);
	len = FUNC1(path);

	if (!len || path[len - 1] != '/')
		return NULL;

	for (i = (ssize_t)len - 2; i >= 0; --i)
		if (path[i] == '/')
			break;

	return &path[i + 1];
}