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
 char FUNC0 (char const**,size_t*) ; 

__attribute__((used)) static bool FUNC1(const char *path, size_t len, const char *needle, size_t needle_len)
{
	size_t i;
	char c;

	if (FUNC0(&path, &len) != '.')
		return true;

	for (i = 0; i < needle_len; i++) {
		c = FUNC0(&path, &len);
		if (c != needle[i])
			return true;
	}

	if (FUNC0(&path, &len) != '\0')
		return true;

	return false;
}