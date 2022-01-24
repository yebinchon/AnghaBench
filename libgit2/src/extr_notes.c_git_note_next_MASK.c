#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_oid* note_id,
	git_oid* annotated_id,
	git_note_iterator *it)
{
	int error;
	const git_index_entry *item;

	if ((error = FUNC1(&item, it)) < 0)
		return error;

	FUNC2(note_id, &item->id);

	if (!(error = FUNC3(item->path, annotated_id)))
		FUNC0(NULL, it);

	return error;
}