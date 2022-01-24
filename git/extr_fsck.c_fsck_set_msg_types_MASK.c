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
struct fsck_options {int /*<<< orphan*/  skiplist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsck_options*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,char*) ; 
 char FUNC6 (char) ; 
 char* FUNC7 (char const*) ; 

void FUNC8(struct fsck_options *options, const char *values)
{
	char *buf = FUNC7(values), *to_free = buf;
	int done = 0;

	while (!done) {
		int len = FUNC5(buf, " ,|"), equal;

		done = !buf[len];
		if (!len) {
			buf++;
			continue;
		}
		buf[len] = '\0';

		for (equal = 0;
		     equal < len && buf[equal] != '=' && buf[equal] != ':';
		     equal++)
			buf[equal] = FUNC6(buf[equal]);
		buf[equal] = '\0';

		if (!FUNC4(buf, "skiplist")) {
			if (equal == len)
				FUNC0("skiplist requires a path");
			FUNC3(&options->skiplist, buf + equal + 1);
			buf += len + 1;
			continue;
		}

		if (equal == len)
			FUNC0("Missing '=': '%s'", buf);

		FUNC2(options, buf, buf + equal + 1);
		buf += len + 1;
	}
	FUNC1(to_free);
}