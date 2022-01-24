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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_merge_file_result ;
typedef  int /*<<< orphan*/  git_merge_file_options ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_merge_file_input ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 

int FUNC7(
	git_merge_file_result *out,
	git_repository *repo,
	const git_index_entry *ancestor,
	const git_index_entry *ours,
	const git_index_entry *theirs,
	const git_merge_file_options *options)
{
	git_merge_file_input *ancestor_ptr = NULL,
		ancestor_input = {0}, our_input = {0}, their_input = {0};
	git_odb *odb = NULL;
	git_odb_object *odb_object[3] = { 0 };
	int error = 0;

	FUNC0(out && repo && ours && theirs);

	FUNC5(out, 0x0, sizeof(git_merge_file_result));

	if ((error = FUNC4(&odb, repo)) < 0)
		goto done;

	if (ancestor) {
		if ((error = FUNC1(
			&ancestor_input, &odb_object[0], odb, ancestor)) < 0)
			goto done;

		ancestor_ptr = &ancestor_input;
	}

	if ((error = FUNC1(
			&our_input, &odb_object[1], odb, ours)) < 0 ||
		(error = FUNC1(
			&their_input, &odb_object[2], odb, theirs)) < 0)
		goto done;

	error = FUNC6(out,
		ancestor_ptr, &our_input, &their_input, options);

done:
	FUNC3(odb_object[0]);
	FUNC3(odb_object[1]);
	FUNC3(odb_object[2]);
	FUNC2(odb);

	return error;
}