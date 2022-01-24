#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * file; } ;
typedef  TYPE_2__ git_attr_file_entry ;
struct TYPE_14__ {size_t source; TYPE_1__* entry; } ;
typedef  TYPE_3__ git_attr_file ;
typedef  int /*<<< orphan*/  git_attr_cache ;
struct TYPE_12__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(git_attr_cache *cache, git_attr_file *file)
{
	git_attr_file_entry *entry;
	git_attr_file *old;

	if (FUNC2(cache) < 0)
		return -1;

	entry = FUNC3(cache, file->entry->path);

	FUNC1(file, entry);
	FUNC0(file);

	/*
	 * Replace the existing value if another thread has
	 * created it in the meantime.
	 */
	old = FUNC5(entry->file[file->source], file);

	if (old) {
		FUNC1(old, NULL);
		FUNC6(old);
	}

	FUNC4(cache);
	return 0;
}