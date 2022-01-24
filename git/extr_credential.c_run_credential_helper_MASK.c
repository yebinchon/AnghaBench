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
struct credential {int dummy; } ;
struct child_process {char const** argv; int use_shell; int in; int out; int no_stdout; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (struct credential*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct credential*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/ * FUNC7 (int,char*) ; 

__attribute__((used)) static int FUNC8(struct credential *c,
				 const char *cmd,
				 int want_output)
{
	struct child_process helper = CHILD_PROCESS_INIT;
	const char *argv[] = { NULL, NULL };
	FILE *fp;

	argv[0] = cmd;
	helper.argv = argv;
	helper.use_shell = 1;
	helper.in = -1;
	if (want_output)
		helper.out = -1;
	else
		helper.no_stdout = 1;

	if (FUNC6(&helper) < 0)
		return -1;

	fp = FUNC7(helper.in, "w");
	FUNC5(SIGPIPE, SIG_IGN);
	FUNC1(c, fp);
	FUNC2(fp);
	FUNC4(SIGPIPE);

	if (want_output) {
		int r;
		fp = FUNC7(helper.out, "r");
		r = FUNC0(c, fp);
		FUNC2(fp);
		if (r < 0) {
			FUNC3(&helper);
			return -1;
		}
	}

	if (FUNC3(&helper))
		return -1;
	return 0;
}