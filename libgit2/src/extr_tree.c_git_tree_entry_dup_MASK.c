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
struct TYPE_6__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  oid; int /*<<< orphan*/  filename_len; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ git_tree_entry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

int FUNC2(git_tree_entry **dest, const git_tree_entry *source)
{
	git_tree_entry *cpy;

	FUNC1(source);

	cpy = FUNC0(source->filename, source->filename_len, source->oid);
	if (cpy == NULL)
		return -1;

	cpy->attr = source->attr;

	*dest = cpy;
	return 0;
}