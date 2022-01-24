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
typedef  int /*<<< orphan*/  git_config_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(
	char **name, const char **value, git_config_parser *reader, const char *line)
{
	const char *name_end = line, *value_start;

	*name = NULL;
	*value = NULL;

	while (*name_end && FUNC2(*name_end))
		name_end++;

	if (line == name_end) {
		FUNC3(reader, 0, "invalid configuration key");
		return -1;
	}

	value_start = name_end;

	while (*value_start && FUNC0(*value_start))
		value_start++;

	if (*value_start == '=') {
		*value = value_start + 1;
	} else if (*value_start) {
		FUNC3(reader, 0, "invalid configuration key");
		return -1;
	}

	if ((*name = FUNC1(line, name_end - line)) == NULL)
		return -1;

	return 0;
}