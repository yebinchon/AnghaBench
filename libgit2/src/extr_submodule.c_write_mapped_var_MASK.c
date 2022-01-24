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
typedef  scalar_t__ git_configmap_t ;
typedef  int /*<<< orphan*/  git_configmap ;

/* Variables and functions */
 scalar_t__ GIT_CONFIGMAP_TRUE ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 scalar_t__ FUNC0 (scalar_t__*,char const**,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3(git_repository *repo, const char *name, git_configmap *maps, size_t nmaps, const char *var, int ival)
{
	git_configmap_t type;
	const char *val;

	if (FUNC0(&type, &val, maps, nmaps, ival) < 0) {
		FUNC1(GIT_ERROR_SUBMODULE, "invalid value for %s", var);
		return -1;
	}

	if (type == GIT_CONFIGMAP_TRUE)
		val = "true";

	return FUNC2(repo, name, var, val);
}