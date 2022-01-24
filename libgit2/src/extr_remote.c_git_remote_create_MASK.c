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
struct TYPE_4__ {char const* name; int /*<<< orphan*/ * repository; } ;
typedef  TYPE_1__ git_remote_create_options ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ERROR ; 
 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,char const*,TYPE_1__*) ; 

int FUNC5(git_remote **out, git_repository *repo, const char *name, const char *url)
{
	git_buf buf = GIT_BUF_INIT;
	int error;
	git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

	/* Those 2 tests are duplicated here because of backward-compatibility */
	if ((error = FUNC1(name)) < 0)
		return error;

	if (FUNC0(&buf, url) < 0)
		return GIT_ERROR;

	FUNC2(&buf);

	opts.repository = repo;
	opts.name = name;

	error = FUNC4(out, url, &opts);

	FUNC3(&buf);

	return error;
}