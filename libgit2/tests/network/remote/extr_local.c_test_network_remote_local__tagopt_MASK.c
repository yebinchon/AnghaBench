#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_4__ {int /*<<< orphan*/  download_tags; } ;
typedef  TYPE_1__ git_fetch_options ;

/* Variables and functions */
 TYPE_1__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_ALL ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_AUTO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote ; 
 int /*<<< orphan*/  repo ; 

void FUNC7(void)
{
	git_reference *ref;
	git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;

	FUNC1(FUNC5(&remote, repo, "tagopt", FUNC2(FUNC0("testrepo.git"))));
	fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_ALL;
	FUNC1(FUNC6(remote, NULL, &fetch_opts, NULL));

	FUNC1(FUNC4(&ref, repo, "refs/remotes/tagopt/master"));
	FUNC3(ref);
	FUNC1(FUNC4(&ref, repo, "refs/tags/hard_tag"));
	FUNC3(ref);

	fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_AUTO;
	FUNC1(FUNC6(remote, NULL, &fetch_opts, NULL));
	FUNC1(FUNC4(&ref, repo, "refs/remotes/tagopt/master"));
	FUNC3(ref);
}