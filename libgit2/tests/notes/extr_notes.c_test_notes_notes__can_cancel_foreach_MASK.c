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

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  note_cancel_cb ; 

void FUNC3(void)
{
	git_oid note_oid1, note_oid2, note_oid3, note_oid4;
	unsigned int retrieved_notes = 0;

	FUNC1(&note_oid1, "refs/notes/i-can-see-dead-notes", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", "I decorate a65f\n");
	FUNC1(&note_oid2, "refs/notes/i-can-see-dead-notes", "c47800c7266a2be04c571c04d5a6614691ea99bd", "I decorate c478\n");
	FUNC1(&note_oid3, "refs/notes/i-can-see-dead-notes", "9fd738e8f7967c078dceed8190330fc8648ee56a", "I decorate 9fd7 and 4a20\n");
	FUNC1(&note_oid4, "refs/notes/i-can-see-dead-notes", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", "I decorate 9fd7 and 4a20\n");

	FUNC0(
		1,
		FUNC2(_repo, "refs/notes/i-can-see-dead-notes",
			note_cancel_cb, &retrieved_notes));
}