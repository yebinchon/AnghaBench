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

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_note_iterator *iter;
	git_note *note;
	git_oid note_id, annotated_id;
	git_oid note_created[2];
	const char* note_message[] = {
		"I decorate a65f\n",
		"I decorate c478\n"
	};
	int i, err;

	FUNC3(&note_created[0], "refs/notes/beer",
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750", note_message[0]);
	FUNC3(&note_created[1], "refs/notes/beer",
		"c47800c7266a2be04c571c04d5a6614691ea99bd", note_message[1]);

	FUNC2(FUNC6(&iter, _repo, "refs/notes/beer"));

	for (i = 0; (err = FUNC8(&note_id, &annotated_id, iter)) >= 0; ++i) {
		FUNC2(FUNC9(&note, _repo, "refs/notes/beer", &annotated_id));
		FUNC1(FUNC7(note), note_message[i]);
		FUNC4(note);
	}

	FUNC0(GIT_ITEROVER, err);
	FUNC0(2, i);
	FUNC5(iter);
}