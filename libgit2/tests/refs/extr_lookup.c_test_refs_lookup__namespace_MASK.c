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
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC2(void)
{
	int error;
	git_reference *ref;

	error = FUNC1(&ref, g_repo, "refs/heads");
	FUNC0(error, GIT_ENOTFOUND);

	error = FUNC1(&ref, g_repo, "refs/heads/");
	FUNC0(error, GIT_EINVALIDSPEC);
}