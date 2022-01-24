#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_9__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static int FUNC11(const char *ours, const char *theirs)
{
	git_buf branch_buf = GIT_BUF_INIT;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_reference *our_ref, *their_ref;
	git_annotated_commit *their_heads[1];

	checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC5(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, ours);
	FUNC0(FUNC10(&our_ref, repo, "HEAD", branch_buf.ptr, 1, NULL));

	FUNC0(FUNC6(repo, &checkout_opts));

	FUNC3(&branch_buf);
	FUNC5(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, theirs);
	FUNC0(FUNC9(&their_ref, repo, branch_buf.ptr));
	FUNC0(FUNC2(&their_heads[0], repo, their_ref));

	FUNC0(FUNC7(repo, (const git_annotated_commit **)their_heads, 1, NULL, NULL));

	FUNC4(&branch_buf);
	FUNC8(our_ref);
	FUNC8(their_ref);
	FUNC1(their_heads[0]);

	return 0;
}