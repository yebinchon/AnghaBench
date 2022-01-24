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
typedef  int git_repository_item_t ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
#define  GIT_REPOSITORY_ITEM_COMMONDIR 130 
#define  GIT_REPOSITORY_ITEM_GITDIR 129 
#define  GIT_REPOSITORY_ITEM_WORKDIR 128 
 int GIT_REPOSITORY_ITEM__LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const char *FUNC4(const git_repository *repo, git_repository_item_t item, git_repository_item_t fallback)
{
	const char *parent;

	switch (item) {
		case GIT_REPOSITORY_ITEM_GITDIR:
			parent = FUNC2(repo);
			break;
		case GIT_REPOSITORY_ITEM_WORKDIR:
			parent = FUNC3(repo);
			break;
		case GIT_REPOSITORY_ITEM_COMMONDIR:
			parent = FUNC1(repo);
			break;
		default:
			FUNC0(GIT_ERROR_INVALID, "invalid item directory");
			return NULL;
	}
	if (!parent && fallback != GIT_REPOSITORY_ITEM__LAST)
		return FUNC4(repo, fallback, GIT_REPOSITORY_ITEM__LAST);

	return parent;
}