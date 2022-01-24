#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct status_entry {scalar_t__ newname; scalar_t__ oldname; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_15__ {int status; TYPE_6__* head_to_index; TYPE_4__* index_to_workdir; } ;
typedef  TYPE_7__ git_status_entry ;
struct TYPE_13__ {char* path; } ;
struct TYPE_9__ {char* path; } ;
struct TYPE_14__ {TYPE_5__ new_file; TYPE_1__ old_file; } ;
struct TYPE_11__ {char* path; } ;
struct TYPE_10__ {char* path; } ;
struct TYPE_12__ {TYPE_3__ new_file; TYPE_2__ old_file; } ;

/* Variables and functions */
 int GIT_STATUS_INDEX_RENAMED ; 
 int GIT_STATUS_WT_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
	git_status_list *status_list,
	struct status_entry *expected_list,
	size_t expected_len)
{
	const git_status_entry *actual;
	const struct status_entry *expected;
	const char *oldname, *newname;
	size_t i, files_in_status = FUNC5(status_list);

	FUNC3(expected_len, files_in_status);

	for (i = 0; i < expected_len; i++) {
		actual = FUNC4(status_list, i);
		expected = &expected_list[i];

		oldname = actual->head_to_index ? actual->head_to_index->old_file.path :
			actual->index_to_workdir ? actual->index_to_workdir->old_file.path : NULL;

		newname = actual->index_to_workdir ? actual->index_to_workdir->new_file.path :
			actual->head_to_index ? actual->head_to_index->new_file.path : NULL;

		FUNC1(expected->status, actual->status, "%04x");

		if (expected->oldname) {
			FUNC0(oldname != NULL);
			FUNC2(oldname, expected->oldname);
		} else {
			FUNC0(oldname == NULL);
		}

		if (actual->status & (GIT_STATUS_INDEX_RENAMED|GIT_STATUS_WT_RENAMED)) {
			if (expected->newname) {
				FUNC0(newname != NULL);
				FUNC2(newname, expected->newname);
			} else {
				FUNC0(newname == NULL);
			}
		}
	}
}