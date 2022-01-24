#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ rewrite_notes_ref; } ;
typedef  TYPE_1__ git_rebase_options ;
struct TYPE_13__ {TYPE_2__* rewrite_notes_ref; } ;
struct TYPE_12__ {TYPE_5__ options; } ;
typedef  TYPE_2__ git_rebase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_REBASE_OPTIONS_VERSION ; 
 TYPE_2__* FUNC1 (int,int) ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_1__ const*,int) ; 

__attribute__((used)) static int FUNC5(git_rebase **out, const git_rebase_options *rebase_opts)
{
	git_rebase *rebase = FUNC1(1, sizeof(git_rebase));
	FUNC0(rebase);

	*out = NULL;

	if (rebase_opts)
		FUNC4(&rebase->options, rebase_opts, sizeof(git_rebase_options));
	else
		FUNC3(&rebase->options, GIT_REBASE_OPTIONS_VERSION);

	if (rebase_opts && rebase_opts->rewrite_notes_ref) {
		rebase->options.rewrite_notes_ref = FUNC2(rebase_opts->rewrite_notes_ref);
		FUNC0(rebase->options.rewrite_notes_ref);
	}

	*out = rebase;

	return 0;
}