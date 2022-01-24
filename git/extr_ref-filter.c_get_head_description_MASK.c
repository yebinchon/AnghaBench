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
struct wt_status_state {scalar_t__ detached_from; scalar_t__ onto; scalar_t__ branch; scalar_t__ detached_at; scalar_t__ bisect_in_progress; scalar_t__ rebase_interactive_in_progress; scalar_t__ rebase_in_progress; } ;
struct strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 scalar_t__ HEAD_DETACHED_AT ; 
 scalar_t__ HEAD_DETACHED_FROM ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,scalar_t__) ; 
 char* FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct wt_status_state*,int) ; 

char *FUNC8(void)
{
	struct strbuf desc = STRBUF_INIT;
	struct wt_status_state state;
	FUNC2(&state, 0, sizeof(state));
	FUNC7(the_repository, &state, 1);

	/*
	 * The ( character must be hard-coded and not part of a localizable
	 * string, since the description is used as a sort key and compared
	 * with ref names.
	 */
	FUNC3(&desc, '(');
	if (state.rebase_in_progress ||
	    state.rebase_interactive_in_progress) {
		if (state.branch)
			FUNC4(&desc, FUNC0("no branch, rebasing %s"),
				    state.branch);
		else
			FUNC4(&desc, FUNC0("no branch, rebasing detached HEAD %s"),
				    state.detached_from);
	} else if (state.bisect_in_progress)
		FUNC4(&desc, FUNC0("no branch, bisect started on %s"),
			    state.branch);
	else if (state.detached_from) {
		if (state.detached_at)
			FUNC5(&desc, HEAD_DETACHED_AT);
		else
			FUNC5(&desc, HEAD_DETACHED_FROM);
		FUNC5(&desc, state.detached_from);
	}
	else
		FUNC5(&desc, FUNC0("no branch"));
	FUNC3(&desc, ')');

	FUNC1(state.branch);
	FUNC1(state.onto);
	FUNC1(state.detached_from);
	return FUNC6(&desc, NULL);
}