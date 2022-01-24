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
struct replay_opts {int /*<<< orphan*/  default_msg_cleanup; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_MSG_CLEANUP_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct replay_opts*) ; 
 int /*<<< orphan*/  git_sequencer_config ; 

void FUNC1(struct replay_opts *opts)
{
	opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_NONE;
	FUNC0(git_sequencer_config, opts);
}