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
typedef  int /*<<< orphan*/  git_revwalk__push_options ;
struct TYPE_4__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_revwalk ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC2(git_revwalk *walk, const char *refname, const git_revwalk__push_options *opts)
{
	git_oid oid;

	if (FUNC0(&oid, walk->repo, refname) < 0)
		return -1;

	return FUNC1(walk, &oid, opts);
}