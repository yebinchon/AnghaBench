#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_attr_file_entry ;
struct TYPE_8__ {int /*<<< orphan*/  files; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ git_attr_cache ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(
	git_attr_file_entry **out, git_repository *repo, const char *path)
{
	git_attr_cache *cache = FUNC1(repo);
	git_attr_file_entry *entry = NULL;
	int error;

	if ((error = FUNC0(&entry, FUNC2(repo),
						      path, &cache->pool)) < 0)
		return error;

	if ((error = FUNC3(cache->files, entry->path, entry)) < 0)
		return error;

	*out = entry;
	return error;
}