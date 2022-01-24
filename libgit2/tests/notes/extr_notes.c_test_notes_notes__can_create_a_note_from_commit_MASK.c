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
struct note_create_payload {char* member_0; char* member_1; int /*<<< orphan*/  object_oid; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (struct note_create_payload*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct note_create_payload**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  note_list_create_cb ; 

void FUNC7(void)
{
	git_oid oid;
	git_oid notes_commit_out;
	git_reference *ref;
	static struct note_create_payload can_create_a_note_from_commit[] = {
		{ "1c9b1bc36730582a42d56eeee0dc58673d7ae869", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", 0 },
		{ NULL, NULL, 0 }
	};

	FUNC1(FUNC4(&oid, can_create_a_note_from_commit[0].object_oid));

	FUNC1(FUNC2(&notes_commit_out, NULL, _repo, NULL, _sig, _sig, &oid, "I decorate 4a20\n", 1));

	/* create_from_commit will not update any ref,
	 * so we must manually create the ref, that points to the commit */
	FUNC1(FUNC5(&ref, _repo, "refs/notes/i-can-see-dead-notes", &notes_commit_out, 0, NULL));

	FUNC1(FUNC3(_repo, "refs/notes/i-can-see-dead-notes", note_list_create_cb, &can_create_a_note_from_commit));

	FUNC0(can_create_a_note_from_commit, 1);

	FUNC6(ref);
}