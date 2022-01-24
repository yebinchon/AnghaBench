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
struct TYPE_5__ {scalar_t__ message; int /*<<< orphan*/  klass; } ;
struct TYPE_6__ {int error_code; TYPE_1__ error_msg; scalar_t__ oom; } ;
typedef  TYPE_2__ git_error_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(git_error_state *state)
{
	int ret = 0;

	FUNC0();

	if (state && state->error_msg.message) {
		if (state->oom)
			FUNC1();
		else
			FUNC3(state->error_msg.klass, state->error_msg.message);

		ret = state->error_code;
		FUNC2(state, 0, sizeof(git_error_state));
	}

	return ret;
}