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
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (struct replay_opts*,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (struct repository*,struct replay_opts*,char const*,char const*) ; 

int FUNC4(struct repository *r, struct replay_opts *opts,
				 const char *commit)
{
	const char *action;

	if (commit && *commit) {
		action = FUNC2(opts, "start", "checkout %s", commit);
		if (FUNC3(r, opts, commit, action))
			return FUNC1(FUNC0("could not checkout %s"), commit);
	}

	return 0;
}