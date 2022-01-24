#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  repository; } ;
typedef  TYPE_2__ git_remote_create_options ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 TYPE_2__ GIT_REMOTE_CREATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC ; 
 char* TEST_URL ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11(void)
{
	git_remote *remote;
	git_strarray array;
	git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

	opts.name = "test-new";
	opts.repository = _repo;
	opts.flags = GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC;

	FUNC3(FUNC4(&remote, TEST_URL, &opts));
	FUNC2(FUNC7(remote), "test-new");
	FUNC2(FUNC9(remote), TEST_URL);
	FUNC1(FUNC8(remote), _repo);

	FUNC3(FUNC6(&array, remote));
	FUNC0(0, array.count);

	FUNC10(&array);
	FUNC5(remote);
}