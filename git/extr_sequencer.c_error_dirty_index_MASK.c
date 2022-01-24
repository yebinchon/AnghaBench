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
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct replay_opts*) ; 
 scalar_t__ advice_commit_before_merge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct repository*) ; 

__attribute__((used)) static int FUNC6(struct repository *repo, struct replay_opts *opts)
{
	if (FUNC5(repo))
		return FUNC4(FUNC0(FUNC1(opts)));

	FUNC3(FUNC0("your local changes would be overwritten by %s."),
		FUNC0(FUNC1(opts)));

	if (advice_commit_before_merge)
		FUNC2(FUNC0("commit your changes or stash them to proceed."));
	return -1;
}