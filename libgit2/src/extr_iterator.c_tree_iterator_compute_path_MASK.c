#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* tree_entry; int /*<<< orphan*/  parent_path; } ;
typedef  TYPE_1__ tree_iterator_entry ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_5__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(
	git_buf *out,
	tree_iterator_entry *entry)
{
	FUNC0(out);

	if (entry->parent_path)
		FUNC1(out, entry->parent_path, entry->tree_entry->filename);
	else
		FUNC4(out, entry->tree_entry->filename);

	if (FUNC5(entry->tree_entry))
		FUNC3(out, '/');

	if (FUNC2(out))
		return -1;

	return 0;
}