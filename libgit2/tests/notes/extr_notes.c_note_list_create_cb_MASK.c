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
struct note_create_payload {int seen; int /*<<< orphan*/ * object_oid; int /*<<< orphan*/ * note_oid; } ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
	const git_oid *blob_oid, const git_oid *annotated_obj_id, void *payload)
{
	git_oid expected_note_oid, expected_target_oid;
	struct note_create_payload *notes = payload;
	size_t i;

	for (i = 0; notes[i].note_oid != NULL; i++) {
		FUNC1(FUNC3(&expected_note_oid, notes[i].note_oid));

		if (FUNC2(&expected_note_oid, blob_oid) != 0)
			continue;

		FUNC1(FUNC3(&expected_target_oid, notes[i].object_oid));

		if (FUNC2(&expected_target_oid, annotated_obj_id) != 0)
			continue;

		notes[i].seen = 1;
		return 0;
	}

	FUNC0("Did not see expected note");
	return 0;
}