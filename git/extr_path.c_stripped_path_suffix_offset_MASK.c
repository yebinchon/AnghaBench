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
 int FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static ssize_t FUNC3(const char *path, const char *suffix)
{
	int path_len = FUNC2(path), suffix_len = FUNC2(suffix);

	while (suffix_len) {
		if (!path_len)
			return -1;

		if (FUNC1(path[path_len - 1])) {
			if (!FUNC1(suffix[suffix_len - 1]))
				return -1;
			path_len = FUNC0(path, path_len);
			suffix_len = FUNC0(suffix, suffix_len);
		}
		else if (path[--path_len] != suffix[--suffix_len])
			return -1;
	}

	if (path_len && !FUNC1(path[path_len - 1]))
		return -1;
	return FUNC0(path, path_len);
}