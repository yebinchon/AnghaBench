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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_NOTES_DEFAULT_REF ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(char **out, git_repository *repo)
{
	git_config *cfg;
	int ret = FUNC1(&cfg, repo);

	*out = (ret != 0) ? NULL : FUNC0(
		cfg, "core.notesref", GIT_NOTES_DEFAULT_REF);

	return ret;
}