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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(git_object** out, git_repository *repo, const char *spec, size_t speclen)
{
	git_oid oid;

	if (FUNC1(&oid, spec, speclen) < 0)
		return GIT_ENOTFOUND;

	return FUNC0(out, repo, &oid, speclen, GIT_OBJECT_ANY);
}