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
struct note_create_payload {char* member_0; char* member_1; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (struct note_create_payload*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct note_create_payload**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  note_list_create_cb ; 

void FUNC10(void)
{
	git_oid oid;
	git_oid notes_commit_out;
	git_commit *existing_notes_commit = NULL;
	git_reference *ref;
	static struct note_create_payload can_create_a_note_from_commit_given_an_existing_commit[] = {
		{ "1c9b1bc36730582a42d56eeee0dc58673d7ae869", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", 0 },
		{ "1aaf94147c21f981e0a20bf57b89137c5a6aae52", "9fd738e8f7967c078dceed8190330fc8648ee56a", 0 },
		{ NULL, NULL, 0 }
	};

	FUNC2(FUNC7(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

	FUNC2(FUNC5(&notes_commit_out, NULL, _repo, NULL, _sig, _sig, &oid, "I decorate 4a20\n", 0));

	FUNC2(FUNC7(&oid, "9fd738e8f7967c078dceed8190330fc8648ee56a"));

	FUNC4(&existing_notes_commit, _repo, &notes_commit_out);

	FUNC1(existing_notes_commit);

	FUNC2(FUNC5(&notes_commit_out, NULL, _repo, existing_notes_commit, _sig, _sig, &oid, "I decorate 9fd7\n", 0));

	/* create_from_commit will not update any ref,
	 * so we must manually create the ref, that points to the commit */
	FUNC2(FUNC8(&ref, _repo, "refs/notes/i-can-see-dead-notes", &notes_commit_out, 0, NULL));

	FUNC2(FUNC6(_repo, "refs/notes/i-can-see-dead-notes", note_list_create_cb, &can_create_a_note_from_commit_given_an_existing_commit));

	FUNC0(can_create_a_note_from_commit_given_an_existing_commit, 2);

	FUNC3(existing_notes_commit);
	FUNC9(ref);
}