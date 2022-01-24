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
struct replay_opts {scalar_t__ action; TYPE_1__* revs; } ;
struct TYPE_2__ {int reverse; int /*<<< orphan*/  no_walk; } ;

/* Variables and functions */
 scalar_t__ REPLAY_PICK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct replay_opts *opts)
{
	/*
	 * picking (but not reverting) ranges (but not individual revisions)
	 * should be done in reverse
	 */
	if (opts->action == REPLAY_PICK && !opts->revs->no_walk)
		opts->revs->reverse ^= 1;

	if (FUNC2(opts->revs))
		return FUNC1(FUNC0("revision walk setup failed"));

	return 0;
}