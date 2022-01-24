#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_10__ {int dirty; int /*<<< orphan*/  stamp; TYPE_1__ entries; int /*<<< orphan*/  entries_map; int /*<<< orphan*/  tree_pool; int /*<<< orphan*/ * tree; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,scalar_t__) ; 

int FUNC8(git_index *index)
{
	int error = 0;

	FUNC0(index);

	index->dirty = 1;
	index->tree = NULL;
	FUNC5(&index->tree_pool);

	FUNC2(index->entries_map);
	while (!error && index->entries.length > 0)
		error = FUNC7(index, index->entries.length - 1);
	FUNC6(index);

	FUNC4(index);
	FUNC3(index);

	FUNC1(&index->stamp, NULL);

	return error;
}