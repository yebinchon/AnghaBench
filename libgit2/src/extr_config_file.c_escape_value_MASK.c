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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const) ; 
 char const* git_config_escaped ; 
 char const* git_config_escapes ; 
 char* FUNC6 (char const*,char const) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static char *FUNC8(const char *ptr)
{
	git_buf buf;
	size_t len;
	const char *esc;

	FUNC0(ptr);

	len = FUNC7(ptr);
	if (!len)
		return FUNC1(1, sizeof(char));

	if (FUNC3(&buf, len) < 0)
		return NULL;

	while (*ptr != '\0') {
		if ((esc = FUNC6(git_config_escaped, *ptr)) != NULL) {
			FUNC5(&buf, '\\');
			FUNC5(&buf, git_config_escapes[esc - git_config_escaped]);
		} else {
			FUNC5(&buf, *ptr);
		}
		ptr++;
	}

	if (FUNC4(&buf))
		return NULL;

	return FUNC2(&buf);
}