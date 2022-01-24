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
typedef  int /*<<< orphan*/  git_refname_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIGMAP_PRECOMPOSE ; 
 unsigned int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ; 
 unsigned int GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE ; 
 unsigned int GIT_REFERENCE_FORMAT__VALIDATION_DISABLE ; 
 int /*<<< orphan*/  GIT_REFNAME_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
	git_refname_t out,
	git_repository *repo,
	const char *name,
	bool validate)
{
	int precompose;
	unsigned int flags = GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL;

	if (!FUNC1(&precompose, repo, GIT_CONFIGMAP_PRECOMPOSE) &&
		precompose)
		flags |= GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE;

	if (!validate)
		flags |= GIT_REFERENCE_FORMAT__VALIDATION_DISABLE;

	return FUNC0(out, GIT_REFNAME_MAX, name, flags);
}