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
struct replay_opts {int action; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
#define  REPLAY_INTERACTIVE_REBASE 130 
#define  REPLAY_PICK 129 
#define  REPLAY_REVERT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static const char *FUNC3(const struct replay_opts *opts)
{
	switch (opts->action) {
	case REPLAY_REVERT:
		return FUNC0("revert");
	case REPLAY_PICK:
		return FUNC0("cherry-pick");
	case REPLAY_INTERACTIVE_REBASE:
		return FUNC0("rebase -i");
	}
	FUNC2(FUNC1("unknown action: %d"), opts->action);
}