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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(void)
{
	git_oid note_oid, target_oid;
	git_note *note;

	FUNC1(FUNC5(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC2(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world on a custom namespace\n");

	FUNC1(FUNC4(&note, _repo, "refs/notes/some/namespace", &target_oid));

	FUNC0(note, "hello world on a custom namespace\n", &note_oid);

	FUNC3(note);
}