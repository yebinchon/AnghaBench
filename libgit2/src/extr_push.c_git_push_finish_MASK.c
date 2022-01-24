#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_remote_callbacks ;
struct TYPE_4__ {int /*<<< orphan*/  unpack_ok; int /*<<< orphan*/  remote; int /*<<< orphan*/  connection; } ;
typedef  TYPE_1__ git_push ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(git_push *push, const git_remote_callbacks *callbacks)
{
	int error;

	if (!FUNC4(push->remote) &&
	    (error = FUNC3(push->remote, GIT_DIRECTION_PUSH, callbacks, &push->connection)) < 0)
		return error;

	if ((error = FUNC1(push->remote)) < 0 ||
	    (error = FUNC0(push, callbacks)) < 0)
		return error;

	if (!push->unpack_ok) {
		error = -1;
		FUNC2(GIT_ERROR_NET, "unpacking the sent packfile failed on the remote");
	}

	return error;
}