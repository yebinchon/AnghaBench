#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* body; } ;
typedef  TYPE_1__ git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 char const* FUNC2 (char const*,int) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char const*) ; 

const char *FUNC5(git_commit *commit)
{
	const char *msg, *end;

	FUNC0(commit);

	if (!commit->body) {
		/* search for end of summary */
		for (msg = FUNC3(commit); *msg; ++msg)
			if (msg[0] == '\n' && (!msg[1] || msg[1] == '\n'))
				break;

		/* trim leading and trailing whitespace */
		for (; *msg; ++msg)
			if (!FUNC1(*msg))
				break;
		for (end = msg + FUNC4(msg) - 1; msg <= end; --end)
			if (!FUNC1(*end))
				break;

		if (*msg)
			commit->body = FUNC2(msg, end - msg + 1);
	}

	return commit->body;
}