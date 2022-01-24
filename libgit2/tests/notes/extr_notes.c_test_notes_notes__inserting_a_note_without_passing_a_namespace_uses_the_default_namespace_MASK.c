#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(void)
{
	git_oid note_oid, target_oid;
	git_note *note, *default_namespace_note;
	git_buf default_ref = GIT_BUF_INIT;

	FUNC1(FUNC8(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));
	FUNC1(FUNC5(&default_ref, _repo));

	FUNC2(&note_oid, NULL, "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");

	FUNC1(FUNC7(&note, _repo, NULL, &target_oid));
	FUNC1(FUNC7(&default_namespace_note, _repo, FUNC3(&default_ref), &target_oid));

	FUNC0(note, "hello world\n", &note_oid);
	FUNC0(default_namespace_note, "hello world\n", &note_oid);

	FUNC4(&default_ref);
	FUNC6(note);
	FUNC6(default_namespace_note);
}