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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note_iterator ;
typedef  int (* git_note_foreach_cb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_repository *repo,
	const char *notes_ref,
	git_note_foreach_cb note_cb,
	void *payload)
{
	int error;
	git_note_iterator *iter = NULL;
	git_oid note_id, annotated_id;

	if ((error = FUNC2(&iter, repo, notes_ref)) < 0)
		return error;

	while (!(error = FUNC3(&note_id, &annotated_id, iter))) {
		if ((error = note_cb(&note_id, &annotated_id, payload)) != 0) {
			FUNC0(error);
			break;
		}
	}

	if (error == GIT_ITEROVER)
		error = 0;

	FUNC1(iter);
	return error;
}