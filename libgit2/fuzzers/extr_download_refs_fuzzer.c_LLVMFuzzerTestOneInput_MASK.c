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
struct fuzzer_buffer {unsigned char const* member_0; size_t member_1; } ;
struct TYPE_4__ {struct fuzzer_buffer* payload; int /*<<< orphan*/  transport; } ;
typedef  TYPE_1__ git_remote_callbacks ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 TYPE_1__ GIT_REMOTE_CALLBACKS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  fuzzer_transport_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

int FUNC5(const unsigned char *data, size_t size)
{
	struct fuzzer_buffer buffer = { data, size };
	git_remote_callbacks callbacks = GIT_REMOTE_CALLBACKS_INIT;
	git_remote *remote;

	if (FUNC2(&remote, repo, "fuzzer://remote-url") < 0)
		FUNC0("git_remote_create");

	callbacks.transport = fuzzer_transport_cb;
	callbacks.payload = &buffer;

	if (FUNC1(remote, GIT_DIRECTION_FETCH,
	    &callbacks, NULL, NULL) < 0)
		goto out;

	FUNC3(remote, NULL, NULL);

    out:
	FUNC4(remote);

	return 0;
}