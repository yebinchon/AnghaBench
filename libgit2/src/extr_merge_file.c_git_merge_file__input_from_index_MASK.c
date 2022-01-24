#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_5__ {char* ptr; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_merge_file_input ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_merge_file_input *input_out,
	git_odb_object **odb_object_out,
	git_odb *odb,
	const git_index_entry *entry)
{
	int error = 0;

	FUNC0(input_out && odb_object_out && odb && entry);

	if ((error = FUNC3(odb_object_out, odb, &entry->id)) < 0)
		goto done;

	input_out->path = entry->path;
	input_out->mode = entry->mode;
	input_out->ptr = (char *)FUNC1(*odb_object_out);
	input_out->size = FUNC2(*odb_object_out);

done:
	return error;
}