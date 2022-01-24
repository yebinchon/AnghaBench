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
struct TYPE_5__ {char const* summary; } ;
typedef  TYPE_1__ git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char) ; 
 char const* FUNC2 (char*) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 char* FUNC6 (TYPE_1__*) ; 

const char *FUNC7(git_commit *commit)
{
	git_buf summary = GIT_BUF_INIT;
	const char *msg, *space;
	bool space_contains_newline = false;

	FUNC0(commit);

	if (!commit->summary) {
		for (msg = FUNC6(commit), space = NULL; *msg; ++msg) {
			char next_character = msg[0];
			/* stop processing at the end of the first paragraph */
			if (next_character == '\n' && (!msg[1] || msg[1] == '\n'))
				break;
			/* record the beginning of contiguous whitespace runs */
			else if (FUNC1(next_character)) {
				if(space == NULL) {
					space = msg;
					space_contains_newline = false;
				}
				space_contains_newline |= next_character == '\n';
			}
			/* the next character is non-space */
			else {
				/* process any recorded whitespace */
				if (space) {
					if(space_contains_newline)
						FUNC5(&summary, ' '); /* if the space contains a newline, collapse to ' ' */
					else
						FUNC4(&summary, space, (msg - space)); /* otherwise copy it */
					space = NULL;
				}
				/* copy the next character */
				FUNC5(&summary, next_character);
			}
		}

		commit->summary = FUNC3(&summary);
		if (!commit->summary)
			commit->summary = FUNC2("");
	}

	return commit->summary;
}