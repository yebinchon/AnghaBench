#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
struct TYPE_6__ {struct TYPE_6__* message; int /*<<< orphan*/  committer; int /*<<< orphan*/  author; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_note ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
	git_note **out,
	git_oid *note_oid,
	git_commit *commit,
	git_blob *blob)
{
	git_note *note = NULL;
	git_off_t blobsize;

	note = FUNC2(sizeof(git_note));
	FUNC0(note);

	FUNC8(&note->id, note_oid);

	if (FUNC9(&note->author, FUNC6(commit)) < 0 ||
		FUNC9(&note->committer, FUNC7(commit)) < 0)
		return -1;

	blobsize = FUNC5(blob);
	FUNC1(blobsize);

	note->message = FUNC3(FUNC4(blob), (size_t)blobsize);
	FUNC0(note->message);

	*out = note;
	return 0;
}