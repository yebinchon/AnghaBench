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
struct TYPE_4__ {char const* value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GET_NO_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/  const*,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

char *FUNC3(
	const git_config *cfg, const char *key, const char *fallback_value)
{
	git_config_entry *entry;
	char *ret;

	FUNC0(&entry, cfg, key, false, GET_NO_ERRORS);
	ret = (entry && entry->value) ? FUNC1(entry->value) : fallback_value ? FUNC1(fallback_value) : NULL;
	FUNC2(entry);

	return ret;
}