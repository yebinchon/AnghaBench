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

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{
	git_oid note_oid, target_oid;
	git_note *note, *namespace_note;

	FUNC1(FUNC6(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC2(&note_oid, NULL, "08b041783f40edfe12bb406c9c9a8a040177c125", "hello old world\n");
	FUNC1(FUNC3(&note_oid, _repo, NULL, _sig, _sig, &target_oid, "hello new world\n", 1));

	FUNC1(FUNC5(&note, _repo, NULL, &target_oid));
	FUNC0(note, "hello new world\n", &note_oid);

	FUNC2(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello old world\n");
	FUNC1(FUNC3(&note_oid, _repo, "refs/notes/some/namespace", _sig, _sig, &target_oid, "hello new ref world\n", 1));

	FUNC1(FUNC5(&namespace_note, _repo, "refs/notes/some/namespace", &target_oid));
	FUNC0(namespace_note, "hello new ref world\n", &note_oid);

	FUNC4(note);
	FUNC4(namespace_note);
}