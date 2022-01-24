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
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  repository; } ;
typedef  TYPE_1__ git_remote_create_options ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_CREATE_SKIP_INSTEADOF ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_remote *remote;
	git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

	opts.repository = _repo;
	opts.flags = GIT_REMOTE_CREATE_SKIP_INSTEADOF;

	FUNC2(FUNC3(&remote, "http://example.com/libgit2/libgit2", &opts));

	FUNC1(FUNC6(remote), "http://example.com/libgit2/libgit2");
	FUNC0(FUNC5(remote), NULL);

	FUNC4(remote);
}