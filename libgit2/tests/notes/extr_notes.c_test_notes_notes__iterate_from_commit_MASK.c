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
typedef  int /*<<< orphan*/  git_note_iterator ;
typedef  int /*<<< orphan*/  git_note ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 

void FUNC14(void)
{
	git_note_iterator *iter;
	git_note *note;
	git_oid note_id, annotated_id;
	git_oid oids[2];
	git_oid notes_commit_oids[2];
	git_commit *notes_commits[2];
	const char* note_message[] = {
		"I decorate a65f\n",
		"I decorate c478\n"
	};
	int i, err;

	FUNC3(FUNC13(&(oids[0]), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
	FUNC3(FUNC13(&(oids[1]), "c47800c7266a2be04c571c04d5a6614691ea99bd"));

	FUNC3(FUNC6(&notes_commit_oids[0], NULL, _repo, NULL, _sig, _sig, &(oids[0]), note_message[0], 0));

	FUNC5(&notes_commits[0], _repo, &notes_commit_oids[0]);
	FUNC0(notes_commits[0]);

	FUNC3(FUNC6(&notes_commit_oids[1], NULL, _repo, notes_commits[0], _sig, _sig, &(oids[1]), note_message[1], 0));

	FUNC5(&notes_commits[1], _repo, &notes_commit_oids[1]);
	FUNC0(notes_commits[1]);

	FUNC3(FUNC7(&iter, notes_commits[1]));

	for (i = 0; (err = FUNC12(&note_id, &annotated_id, iter)) >= 0; ++i) {
		FUNC3(FUNC8(&note, _repo, notes_commits[1], &annotated_id));
		FUNC2(FUNC11(note), note_message[i]);
		FUNC9(note);
	}

	FUNC1(GIT_ITEROVER, err);
	FUNC1(2, i);

	FUNC10(iter);
	FUNC4(notes_commits[0]);
	FUNC4(notes_commits[1]);
}