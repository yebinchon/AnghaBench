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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int,char const*,char const*) ; 

char *FUNC7(const char *prefix, int len,
			 int *remaining_prefix, const char *path)
{
	const char *orig = path;
	char *sanitized;
	if (FUNC2(orig)) {
		sanitized = FUNC5(FUNC4(path));
		if (remaining_prefix)
			*remaining_prefix = 0;
		if (FUNC3(sanitized, path, remaining_prefix)) {
			FUNC1(sanitized);
			return NULL;
		}
		if (FUNC0(sanitized)) {
			FUNC1(sanitized);
			return NULL;
		}
	} else {
		sanitized = FUNC6("%.*s%s", len, len ? prefix : "", path);
		if (remaining_prefix)
			*remaining_prefix = len;
		if (FUNC3(sanitized, sanitized, remaining_prefix)) {
			FUNC1(sanitized);
			return NULL;
		}
	}
	return sanitized;
}