#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t git_repository_item_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {scalar_t__ directory; scalar_t__ name; int /*<<< orphan*/  fallback; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* items ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(git_buf *out, const git_repository *repo, git_repository_item_t item)
{
	const char *parent = FUNC4(repo, items[item].parent, items[item].fallback);
	if (parent == NULL) {
		FUNC2(GIT_ERROR_INVALID, "path cannot exist in repository");
		return GIT_ENOTFOUND;
	}

	if (FUNC1(out, parent) < 0)
		return -1;

	if (items[item].name) {
		if (FUNC0(out, parent, items[item].name) < 0)
			return -1;
	}

	if (items[item].directory) {
		if (FUNC3(out) < 0)
			return -1;
	}

	return 0;
}