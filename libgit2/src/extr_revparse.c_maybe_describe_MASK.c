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
typedef  int /*<<< orphan*/  git_regexp ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(git_object**out, git_repository *repo, const char *spec)
{
	const char *substr;
	int error;
	git_regexp regex;

	substr = FUNC4(spec, "-g");

	if (substr == NULL)
		return GIT_ENOTFOUND;

	if (FUNC0(&regex, ".+-[0-9]+-g[0-9a-fA-F]+") < 0)
		return -1;

	error = FUNC2(&regex, spec);
	FUNC1(&regex);

	if (error)
		return GIT_ENOTFOUND;

	return FUNC3(out, repo, substr+2);
}