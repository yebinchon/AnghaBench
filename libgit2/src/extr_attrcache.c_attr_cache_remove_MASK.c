#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * file; } ;
typedef  TYPE_2__ git_attr_file_entry ;
struct TYPE_12__ {size_t source; TYPE_1__* entry; } ;
typedef  TYPE_3__ git_attr_file ;
typedef  int /*<<< orphan*/  git_attr_cache ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(git_attr_cache *cache, git_attr_file *file)
{
	int error = 0;
	git_attr_file_entry *entry;
	git_attr_file *old = NULL;

	if (!file)
		return 0;

	if ((error = FUNC1(cache)) < 0)
		return error;

	if ((entry = FUNC2(cache, file->entry->path)) != NULL)
		old = FUNC4(&entry->file[file->source], file, NULL);

	FUNC3(cache);

	if (old) {
		FUNC0(old, NULL);
		FUNC5(old);
	}

	return error;
}