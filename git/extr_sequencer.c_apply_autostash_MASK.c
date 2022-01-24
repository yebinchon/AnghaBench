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
struct strbuf {char* buf; } ;
struct replay_opts {int dummy; } ;
struct child_process {int git_cmd; int no_stdout; int no_stderr; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static int FUNC9(struct replay_opts *opts)
{
	struct strbuf stash_sha1 = STRBUF_INIT;
	struct child_process child = CHILD_PROCESS_INIT;
	int ret = 0;

	if (!FUNC4(&stash_sha1, FUNC5(), 1)) {
		FUNC7(&stash_sha1);
		return 0;
	}
	FUNC8(&stash_sha1);

	child.git_cmd = 1;
	child.no_stdout = 1;
	child.no_stderr = 1;
	FUNC1(&child.args, "stash");
	FUNC1(&child.args, "apply");
	FUNC1(&child.args, stash_sha1.buf);
	if (!FUNC6(&child))
		FUNC3(stderr, "%s", FUNC0("Applied autostash.\n"));
	else {
		struct child_process store = CHILD_PROCESS_INIT;

		store.git_cmd = 1;
		FUNC1(&store.args, "stash");
		FUNC1(&store.args, "store");
		FUNC1(&store.args, "-m");
		FUNC1(&store.args, "autostash");
		FUNC1(&store.args, "-q");
		FUNC1(&store.args, stash_sha1.buf);
		if (FUNC6(&store))
			ret = FUNC2(FUNC0("cannot store %s"), stash_sha1.buf);
		else
			FUNC3(stderr,
				"%s", FUNC0("Applying autostash resulted in conflicts.\n"
				  "Your changes are safe in the stash.\n"
				  "You can run \"git stash pop\" or"
				  " \"git stash drop\" at any time.\n"));
	}

	FUNC7(&stash_sha1);
	return ret;
}