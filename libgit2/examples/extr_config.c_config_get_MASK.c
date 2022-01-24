#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {char* message; } ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(git_config *cfg, const char *key)
{
	git_config_entry *entry;
	int error;

	if ((error = FUNC0(&entry, cfg, key)) < 0) {
		if (error != GIT_ENOTFOUND)
			FUNC2("Unable to get configuration: %s\n", FUNC1()->message);
		return 1;
	}

	FUNC3(entry->value);
	return 0;
}