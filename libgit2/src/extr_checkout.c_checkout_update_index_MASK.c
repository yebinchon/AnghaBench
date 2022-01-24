#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_9__ {char* path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_10__ {int /*<<< orphan*/  id; scalar_t__ path; } ;
typedef  TYPE_2__ git_diff_file ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_11__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_3__ checkout_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(
	checkout_data *data,
	const git_diff_file *file,
	struct stat *st)
{
	git_index_entry entry;

	if (!data->index)
		return 0;

	FUNC3(&entry, 0, sizeof(entry));
	entry.path = (char *)file->path; /* cast to prevent warning */
	FUNC1(&entry, st, true);
	FUNC2(&entry.id, &file->id);

	return FUNC0(data->index, &entry);
}