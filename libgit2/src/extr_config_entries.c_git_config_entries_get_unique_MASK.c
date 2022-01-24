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
struct TYPE_5__ {scalar_t__ include_depth; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config_entries ;
struct TYPE_6__ {TYPE_1__* entry; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ config_entry_list ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int FUNC0 (TYPE_2__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(git_config_entry **out, git_config_entries *entries, const char *key)
{
	config_entry_list *entry;
	int error;

	if ((error = FUNC0(&entry, entries, key)) < 0)
		return error;

	if (entry->next != NULL) {
		FUNC1(GIT_ERROR_CONFIG, "entry is not unique due to being a multivar");
		return -1;
	}

	if (entry->entry->include_depth) {
		FUNC1(GIT_ERROR_CONFIG, "entry is not unique due to being included");
		return -1;
	}

	*out = entry->entry;

	return 0;
}