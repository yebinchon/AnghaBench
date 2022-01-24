#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC5(
	git_repository *repo,
	const char *name,
	bool is_supposed_to_exist)
{
	git_config *config;
	git_config_entry *entry = NULL;
	int result;

	FUNC1(FUNC4(&config, repo));
	
	result = FUNC3(&entry, config, name);
	FUNC2(entry);

	if (is_supposed_to_exist)
		FUNC1(result);
	else
		FUNC0(GIT_ENOTFOUND, result);
}