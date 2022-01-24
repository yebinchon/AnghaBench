#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 char const* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int FUNC8(git_buf *out, const char *user_message)
{
	git_buf buf = GIT_BUF_INIT;
	int error = 0;

	if (!user_message) {
		FUNC3(&buf, "WIP on %s", FUNC0(out));
	} else {
		const char *colon;

		if ((colon = FUNC7(FUNC0(out), ':')) == NULL)
			goto cleanup;

		FUNC5(&buf, "On ");
		FUNC4(&buf, FUNC0(out), colon - out->ptr);
		FUNC3(&buf, ": %s\n", user_message);
	}

	if (FUNC2(&buf)) {
		error = -1;
		goto cleanup;
	}

	FUNC6(out, &buf);

cleanup:
	FUNC1(&buf);
	return error;
}