#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int strdup_strings; int /*<<< orphan*/  cmp; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;

/* Variables and functions */
 char* git_mailmap_blob ; 
 char* git_mailmap_file ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  namemap_cmp ; 
 int FUNC1 (struct string_list*,char*,char**) ; 
 int FUNC2 (struct string_list*,char*,char**) ; 
 TYPE_1__* startup_info ; 

int FUNC3(struct string_list *map, char **repo_abbrev)
{
	int err = 0;

	map->strdup_strings = 1;
	map->cmp = namemap_cmp;

	if (!git_mailmap_blob && FUNC0())
		git_mailmap_blob = "HEAD:.mailmap";

	err |= FUNC2(map, ".mailmap", repo_abbrev);
	if (startup_info->have_repository)
		err |= FUNC1(map, git_mailmap_blob, repo_abbrev);
	err |= FUNC2(map, git_mailmap_file, repo_abbrev);
	return err;
}