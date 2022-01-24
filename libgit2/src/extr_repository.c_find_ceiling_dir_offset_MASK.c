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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char const GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  GIT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static size_t FUNC6(
	const char *path,
	const char *ceiling_directories)
{
	char buf[GIT_PATH_MAX + 1];
	char buf2[GIT_PATH_MAX + 1];
	const char *ceil, *sep;
	size_t len, max_len = 0, min_len;

	FUNC0(path);

	min_len = (size_t)(FUNC1(path) + 1);

	if (ceiling_directories == NULL || min_len == 0)
		return min_len;

	for (sep = ceil = ceiling_directories; *sep; ceil = sep + 1) {
		for (sep = ceil; *sep && *sep != GIT_PATH_LIST_SEPARATOR; sep++);
		len = sep - ceil;

		if (len == 0 || len >= sizeof(buf) || FUNC1(ceil) == -1)
			continue;

		FUNC5(buf, ceil, len);
		buf[len] = '\0';

		if (FUNC2(buf, buf2) == NULL)
			continue;

		len = FUNC3(buf2);
		if (len > 0 && buf2[len-1] == '/')
			buf[--len] = '\0';

		if (!FUNC4(path, buf2, len) &&
			(path[len] == '/' || !path[len]) &&
			len > max_len)
		{
			max_len = len;
		}
	}

	return (max_len <= min_len ? min_len : max_len);
}