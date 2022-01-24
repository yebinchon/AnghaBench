#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ git_config_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const git_config_entry *entry, void *payload)
{
	git_vector *list = payload;
	const char *name = entry->name + FUNC4("remote.");
	size_t namelen = FUNC4(name);
	char *remote_name;

	/* we know name matches "remote.<stuff>.(push)?url" */

	if (!FUNC3(&name[namelen - 4], ".url"))
		remote_name = FUNC1(name, namelen - 4); /* strip ".url" */
	else
		remote_name = FUNC1(name, namelen - 8); /* strip ".pushurl" */
	FUNC0(remote_name);

	return FUNC2(list, remote_name);
}