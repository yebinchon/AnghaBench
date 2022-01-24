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
struct TYPE_4__ {char** strings; size_t count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void FUNC12(void)
{
	git_remote *remote;
	git_strarray array;
	size_t section_count = FUNC4(_repo, "remote\\.");

	FUNC3(FUNC5(&remote, _repo, "test-new", "git://github.com/libgit2/libgit2", "+refs/*:refs/*"));
	FUNC2(FUNC8(remote), "test-new");
	FUNC2(FUNC10(remote), "git://github.com/libgit2/libgit2");
	FUNC1(FUNC9(remote), _repo);

	FUNC3(FUNC7(&array, remote));
	FUNC2("+refs/*:refs/*", array.strings[0]);
	FUNC0(1, array.count);
	FUNC0(section_count + 2, FUNC4(_repo, "remote\\."));

	FUNC11(&array);
	FUNC6(remote);
}