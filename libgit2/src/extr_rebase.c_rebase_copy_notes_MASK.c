#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_11__ {int /*<<< orphan*/  state_path; } ;
typedef  TYPE_1__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_12__ {char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
 scalar_t__ GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  REWRITTEN_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(
	git_rebase *rebase,
	const git_signature *committer)
{
	git_buf path = GIT_BUF_INIT, rewritten = GIT_BUF_INIT, notes_ref = GIT_BUF_INIT;
	char *pair_list, *fromstr, *tostr, *end;
	git_oid from, to;
	unsigned int linenum = 1;
	int error = 0;

	if ((error = FUNC6(&notes_ref, rebase)) < 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC2();
			error = 0;
		}

		goto done;
	}

	if ((error = FUNC1(&path, rebase->state_path, REWRITTEN_FILE)) < 0 ||
		(error = FUNC4(&rewritten, path.ptr)) < 0)
		goto done;

	pair_list = rewritten.ptr;

	while (*pair_list) {
		fromstr = pair_list;

		if ((end = FUNC8(fromstr, '\n')) == NULL)
			goto on_error;

		pair_list = end+1;
		*end = '\0';

		if ((end = FUNC8(fromstr, ' ')) == NULL)
			goto on_error;

		tostr = end+1;
		*end = '\0';

		if (FUNC9(fromstr) != GIT_OID_HEXSZ ||
			FUNC9(tostr) != GIT_OID_HEXSZ ||
			FUNC5(&from, fromstr) < 0 ||
			FUNC5(&to, tostr) < 0)
			goto on_error;

		if ((error = FUNC7(rebase, notes_ref.ptr, &from, &to, committer)) < 0)
			goto done;

		linenum++;
	}

	goto done;

on_error:
	FUNC3(GIT_ERROR_REBASE, "invalid rewritten file at line %d", linenum);
	error = -1;

done:
	FUNC0(&rewritten);
	FUNC0(&path);
	FUNC0(&notes_ref);

	return error;
}