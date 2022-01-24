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
struct strbuf {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_USING_SHELL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 

int FUNC7(int argc, const char **argv)
{
	const char *trash_directory = FUNC4("TRASH_DIRECTORY");
	struct strbuf buf = STRBUF_INIT;
	FILE *f;
	int i;
	const char *child_argv[] = { NULL, NULL };

	/* First, print all parameters into $TRASH_DIRECTORY/ssh-output */
	if (!trash_directory)
		FUNC0("Need a TRASH_DIRECTORY!");
	FUNC6(&buf, "%s/ssh-output", trash_directory);
	f = FUNC2(buf.buf, "w");
	if (!f)
		FUNC0("Could not write to %s", buf.buf);
	for (i = 0; i < argc; i++)
		FUNC3(f, "%s%s", i > 0 ? " " : "", i > 0 ? argv[i] : "ssh:");
	FUNC3(f, "\n");
	FUNC1(f);

	/* Now, evaluate the *last* parameter */
	if (argc < 2)
		return 0;
	child_argv[0] = argv[argc - 1];
	return FUNC5(child_argv, RUN_USING_SHELL);
}