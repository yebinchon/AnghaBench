#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* opts; } ;
typedef  TYPE_2__ tag_state ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_5__ {scalar_t__ num_lines; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(git_commit *commit, const char *name,
		const tag_state *state)
{
	FUNC2("%-16s", name);

	if (state->opts->num_lines) {
		const char *msg = FUNC0(commit);
		FUNC1(msg, state);
	} else {
		FUNC2("\n");
	}
}