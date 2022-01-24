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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int show_commit_oid_as_fallback; } ;
typedef  TYPE_1__ git_describe_options ;
typedef  int /*<<< orphan*/  git_describe_format_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DESCRIBE_FORMAT_OPTIONS_INIT ; 
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_repository *repo;
	git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
	git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;

	FUNC2(FUNC4(&repo, FUNC1("testrepo.git")));

	FUNC0("hard_tag", "HEAD", repo, &opts, &fmt_opts);

	opts.show_commit_oid_as_fallback = 1;

	FUNC0("be3563a*", "HEAD^", repo, &opts, &fmt_opts);

	FUNC3(repo);
}