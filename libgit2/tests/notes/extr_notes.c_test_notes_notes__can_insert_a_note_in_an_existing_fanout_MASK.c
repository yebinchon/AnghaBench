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
 size_t MESSAGES_COUNT ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * messages ; 

void FUNC6(void)
{
	size_t i;
	git_oid note_oid, target_oid;
	git_note *_note;

	FUNC0(FUNC5(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));
	
	for (i = 0; i <  MESSAGES_COUNT; i++) {
		FUNC0(FUNC1(&note_oid, _repo, "refs/notes/fanout", _sig, _sig, &target_oid, messages[i], 0));
		FUNC0(FUNC3(&_note, _repo, "refs/notes/fanout", &target_oid));
		FUNC2(_note);

		FUNC4(&target_oid, &note_oid);
	}
}