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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (size_t*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	git_oid *oid, git_repository *repo, const char *path)
{
	int error;
	git_index *idx;
	size_t pos;
	const git_index_entry *entry;

	if ((error = FUNC2(&idx, repo)) < 0 ||
		(error = FUNC0(&pos, idx, path, 0, 0)) < 0)
		return error;

	if (!(entry = FUNC1(idx, pos)))
		return GIT_ENOTFOUND;

	*oid = entry->id;
	return 0;
}