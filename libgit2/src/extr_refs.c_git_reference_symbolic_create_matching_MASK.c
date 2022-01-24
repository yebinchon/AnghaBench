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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*) ; 

int FUNC4(
	git_reference **ref_out,
	git_repository *repo,
	const char *name,
	const char *target,
	int force,
	const char *old_target,
	const char *log_message)
{
	int error;
	git_signature *who = NULL;

	FUNC0(target);

	if ((error = FUNC1(&who, repo)) < 0)
		return error;

	error = FUNC3(
		ref_out, repo, name, NULL, target, force, who, log_message, NULL, old_target);

	FUNC2(who);
	return error;
}