#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rewrite_notes_ref; } ;
struct TYPE_5__ {int /*<<< orphan*/  repo; TYPE_1__ options; } ;
typedef  TYPE_2__ git_rebase ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(git_buf *out, git_rebase *rebase)
{
	git_config *config = NULL;
	int do_rewrite, error;

	if (rebase->options.rewrite_notes_ref) {
		FUNC0(out,
			rebase->options.rewrite_notes_ref,
			FUNC6(rebase->options.rewrite_notes_ref));
		return 0;
	}

	if ((error = FUNC5(&config, rebase->repo)) < 0 ||
		(error = FUNC2(&do_rewrite, config, "notes.rewrite.rebase")) < 0) {

		if (error != GIT_ENOTFOUND)
			goto done;

		FUNC4();
		do_rewrite = 1;
	}

	error = do_rewrite ?
		FUNC3(out, config, "notes.rewriteref") :
		GIT_ENOTFOUND;

done:
	FUNC1(config);
	return error;
}