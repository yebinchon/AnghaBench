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
struct iterator_compare_data {size_t idx; size_t cnt; TYPE_1__* expected; } ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid_str; int /*<<< orphan*/  stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const git_index_entry *entry, void *_data)
{
	git_oid expected_id;

	struct iterator_compare_data *data = (struct iterator_compare_data *)_data;

	FUNC1(FUNC0(entry), data->expected[data->idx].stage);
	FUNC4(FUNC5(&expected_id, data->expected[data->idx].oid_str));
	FUNC2(&entry->id, &expected_id);
	FUNC1(entry->mode, data->expected[data->idx].mode);
	FUNC3(entry->path, data->expected[data->idx].path);

	if (data->idx >= data->cnt)
		return -1;

	data->idx++;

	return 0;
}