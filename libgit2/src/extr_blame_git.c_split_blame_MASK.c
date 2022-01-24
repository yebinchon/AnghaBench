#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ suspect; } ;
typedef  TYPE_1__ git_blame__entry ;
typedef  int /*<<< orphan*/  git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(git_blame *blame, git_blame__entry *split, git_blame__entry *e)
{
	git_blame__entry *new_entry;

	if (split[0].suspect && split[2].suspect) {
		/* The first part (reuse storage for the existing entry e */
		FUNC2(e, &split[0]);

		/* The last part -- me */
		new_entry = FUNC3(sizeof(*new_entry));
		FUNC0(new_entry);
		FUNC4(new_entry, &(split[2]), sizeof(git_blame__entry));
		FUNC1(blame, new_entry);

		/* ... and the middle part -- parent */
		new_entry = FUNC3(sizeof(*new_entry));
		FUNC0(new_entry);
		FUNC4(new_entry, &(split[1]), sizeof(git_blame__entry));
		FUNC1(blame, new_entry);
	} else if (!split[0].suspect && !split[2].suspect) {
		/*
		 * The parent covers the entire area; reuse storage for e and replace it
		 * with the parent
		 */
		FUNC2(e, &split[1]);
	} else if (split[0].suspect) {
		/* me and then parent */
		FUNC2(e, &split[0]);
		new_entry = FUNC3(sizeof(*new_entry));
		FUNC0(new_entry);
		FUNC4(new_entry, &(split[1]), sizeof(git_blame__entry));
		FUNC1(blame, new_entry);
	} else {
		/* parent and then me */
		FUNC2(e, &split[1]);
		new_entry = FUNC3(sizeof(*new_entry));
		FUNC0(new_entry);
		FUNC4(new_entry, &(split[2]), sizeof(git_blame__entry));
		FUNC1(blame, new_entry);
	}

	return 0;
}