#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GET_NO_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/  const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(
	const git_config *cfg, const char *key, int fallback_value)
{
	int val = fallback_value;
	git_config_entry *entry;

	FUNC0(&entry, cfg, key, false, GET_NO_ERRORS);

	if (entry && FUNC2(&val, entry->value) < 0)
		FUNC3();

	FUNC1(entry);
	return val;
}