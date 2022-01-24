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
struct strbuf {int dummy; } ;
struct child_process {char const** argv; char const* const* env; int use_shell; char* trace2_child_class; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int SIGINT ; 
 int SIGQUIT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_waiting_for_editor ; 
 int FUNC1 (char*,...) ; 
 int FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char const* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(const char *editor, const char *path,
				   struct strbuf *buffer, const char *const *env)
{
	if (!editor)
		return FUNC1("Terminal is dumb, but EDITOR unset");

	if (FUNC14(editor, ":")) {
		const char *args[] = { editor, FUNC9(path), NULL };
		struct child_process p = CHILD_PROCESS_INIT;
		int ret, sig;
		int print_waiting_for_editor = advice_waiting_for_editor && FUNC7(2);

		if (print_waiting_for_editor) {
			/*
			 * A dumb terminal cannot erase the line later on. Add a
			 * newline to separate the hint from subsequent output.
			 *
			 * Make sure that our message is separated with a whitespace
			 * from further cruft that may be written by the editor.
			 */
			const char term = FUNC6() ? '\n' : ' ';

			FUNC5(stderr,
				FUNC0("hint: Waiting for your editor to close the file...%c"),
				term);
			FUNC3(stderr);
		}

		p.argv = args;
		p.env = env;
		p.use_shell = 1;
		p.trace2_child_class = "editor";
		if (FUNC12(&p) < 0)
			return FUNC1("unable to start editor '%s'", editor);

		FUNC11(SIGINT, SIG_IGN);
		FUNC11(SIGQUIT, SIG_IGN);
		ret = FUNC4(&p);
		sig = ret - 128;
		FUNC10(SIGINT);
		FUNC10(SIGQUIT);
		if (sig == SIGINT || sig == SIGQUIT)
			FUNC8(sig);
		if (ret)
			return FUNC1("There was a problem with the editor '%s'.",
					editor);

		if (print_waiting_for_editor && !FUNC6())
			/*
			 * Erase the entire line to avoid wasting the
			 * vertical space.
			 */
			FUNC15();
	}

	if (!buffer)
		return 0;
	if (FUNC13(buffer, path, 0) < 0)
		return FUNC2("could not read file '%s'", path);
	return 0;
}