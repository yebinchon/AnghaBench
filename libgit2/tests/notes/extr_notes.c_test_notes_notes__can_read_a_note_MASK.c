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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{
	git_oid note_oid, target_oid;
	git_note *note;

	FUNC2(&note_oid, "refs/notes/i-can-see-dead-notes", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", "I decorate 4a20\n");

	FUNC1(FUNC6(&target_oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

	FUNC1(FUNC5(&note, _repo, "refs/notes/i-can-see-dead-notes", &target_oid));

	FUNC0(FUNC4(note), "I decorate 4a20\n");

	FUNC3(note);
}