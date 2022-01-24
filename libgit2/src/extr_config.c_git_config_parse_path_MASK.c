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
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 

int FUNC5(git_buf *out, const char *value)
{
	FUNC0(out && value);

	FUNC1(out);

	if (value[0] == '~') {
		if (value[1] != '\0' && value[1] != '/') {
			FUNC3(GIT_ERROR_CONFIG, "retrieving a homedir by name is not supported");
			return -1;
		}

		return FUNC4(out, value[1] ? &value[2] : NULL);
	}

	return FUNC2(out, value);
}