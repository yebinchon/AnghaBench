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
struct replay_opts {scalar_t__ action; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFLOG_ACTION ; 
 scalar_t__ REPLAY_PICK ; 
 int /*<<< orphan*/  TODO_PICK ; 
 int /*<<< orphan*/  TODO_REVERT ; 
 int /*<<< orphan*/  FUNC0 (struct replay_opts*) ; 
 int FUNC1 (struct repository*,int /*<<< orphan*/ ,struct commit*,struct replay_opts*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct repository *r,
		       struct commit *cmit,
		       struct replay_opts *opts)
{
	int check_todo;

	FUNC2(GIT_REFLOG_ACTION, FUNC0(opts), 0);
	return FUNC1(r, opts->action == REPLAY_PICK ?
			      TODO_PICK : TODO_REVERT, cmit, opts, 0,
			      &check_todo);
}