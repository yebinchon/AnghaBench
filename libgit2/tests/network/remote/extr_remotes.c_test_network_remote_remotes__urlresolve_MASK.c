#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* payload; int /*<<< orphan*/  resolve_url; } ;
typedef  TYPE_1__ git_remote_callbacks ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 TYPE_1__ GIT_REMOTE_CALLBACKS_INIT ; 
 int /*<<< orphan*/  _remote ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  urlresolve_callback ; 

void FUNC8(void)
{
	git_buf url = GIT_BUF_INIT;

	git_remote_callbacks callbacks = GIT_REMOTE_CALLBACKS_INIT;
	callbacks.resolve_url = urlresolve_callback;
	callbacks.payload = "payload";

	FUNC1(FUNC5(_remote), "test");
	FUNC1(FUNC7(_remote), "git://github.com/libgit2/libgit2");
	FUNC0(FUNC6(_remote) == NULL);

	FUNC2(FUNC4(&url, _remote, GIT_DIRECTION_FETCH, &callbacks));
	FUNC1(url.ptr, "fetchresolve");

	FUNC2(FUNC4(&url, _remote, GIT_DIRECTION_PUSH, &callbacks));
	FUNC1(url.ptr, "pushresolve");

	FUNC3(&url);
}