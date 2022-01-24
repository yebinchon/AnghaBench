#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* raw_header; } ;
typedef  TYPE_1__ git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int FUNC9(git_buf *out, const git_commit *commit, const char *field)
{
	const char *eol, *buf = commit->raw_header;

	FUNC1(out);

	while ((eol = FUNC7(buf, '\n'))) {
		/* We can skip continuations here */
		if (buf[0] == ' ') {
			buf = eol + 1;
			continue;
		}

		/* Skip until we find the field we're after */
		if (FUNC0(buf, field)) {
			buf = eol + 1;
			continue;
		}

		buf += FUNC8(field);
		/* Check that we're not matching a prefix but the field itself */
		if (buf[0] != ' ') {
			buf = eol + 1;
			continue;
		}

		buf++; /* skip the SP */

		FUNC3(out, buf, eol - buf);
		if (FUNC2(out))
			goto oom;

		/* If the next line starts with SP, it's multi-line, we must continue */
		while (eol[1] == ' ') {
			FUNC4(out, '\n');
			buf = eol + 2;
			eol = FUNC7(buf, '\n');
			if (!eol)
				goto malformed;

			FUNC3(out, buf, eol - buf);
		}

		if (FUNC2(out))
			goto oom;

		return 0;
	}

	FUNC5(GIT_ERROR_OBJECT, "no such field '%s'", field);
	return GIT_ENOTFOUND;

malformed:
	FUNC5(GIT_ERROR_OBJECT, "malformed header");
	return -1;
oom:
	FUNC6();
	return -1;
}