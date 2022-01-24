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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(void)
{
	git_oid oid, notes_commit_oid;
	git_commit *notes_commit;
	git_note *note;

	FUNC2(FUNC8(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

	FUNC2(FUNC5(&notes_commit_oid, NULL, _repo, NULL, _sig, _sig, &oid, "I decorate 4a20\n", 1));

	FUNC4(&notes_commit, _repo, &notes_commit_oid);

	FUNC2(FUNC7(&notes_commit_oid, _repo, notes_commit, _sig, _sig, &oid));
	FUNC3(notes_commit);

	FUNC4(&notes_commit, _repo, &notes_commit_oid);

	FUNC0(notes_commit);

	FUNC1(GIT_ENOTFOUND, FUNC6(&note, _repo, notes_commit, &oid));

	FUNC3(notes_commit);
}