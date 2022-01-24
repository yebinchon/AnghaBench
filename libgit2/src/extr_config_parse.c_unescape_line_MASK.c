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
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/ * git_config_escaped ; 
 char* git_config_escapes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC4 (char*,char const) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
	char **out, bool *is_multi, const char *ptr, int quote_count)
{
	char *str, *fixed, *esc;
	size_t ptr_len = FUNC5(ptr), alloc_len;

	*is_multi = false;

	if (FUNC0(&alloc_len, ptr_len, 1) ||
		(str = FUNC2(alloc_len)) == NULL) {
		return -1;
	}

	fixed = str;

	while (*ptr != '\0') {
		if (*ptr == '"') {
			quote_count++;
		} else if (*ptr != '\\') {
			*fixed++ = *ptr;
		} else {
			/* backslash, check the next char */
			ptr++;
			/* if we're at the end, it's a multiline, so keep the backslash */
			if (*ptr == '\0') {
				*is_multi = true;
				goto done;
			}
			if ((esc = FUNC4(git_config_escapes, *ptr)) != NULL) {
				*fixed++ = git_config_escaped[esc - git_config_escapes];
			} else {
				FUNC1(str);
				FUNC3(GIT_ERROR_CONFIG, "invalid escape at %s", ptr);
				return -1;
			}
		}
		ptr++;
	}

done:
	*fixed = '\0';
	*out = str;

	return 0;
}