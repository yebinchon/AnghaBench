#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int (* git_transport_cb ) (TYPE_1__**,TYPE_2__*,void*) ;
struct TYPE_26__ {int (* connect ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_5__ const*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_transport ;
struct TYPE_28__ {TYPE_5__ const* proxy; int /*<<< orphan*/  custom_headers; } ;
typedef  TYPE_4__ git_remote_connection_opts ;
struct TYPE_29__ {int (* transport ) (TYPE_1__**,TYPE_2__*,void*) ;void* payload; int /*<<< orphan*/ * credentials; } ;
typedef  TYPE_5__ git_remote_callbacks ;
struct TYPE_27__ {TYPE_1__* transport; } ;
typedef  TYPE_2__ git_remote ;
typedef  int /*<<< orphan*/  git_direction ;
typedef  int /*<<< orphan*/ * git_cred_acquire_cb ;
struct TYPE_30__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_7__ git_buf ;

/* Variables and functions */
 TYPE_7__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_PROXY_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_REMOTE_CALLBACKS_VERSION ; 
 int GIT_TRANSPORTFLAGS_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int FUNC3 (TYPE_7__*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__ const*) ; 
 int FUNC4 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,TYPE_5__ const*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_5__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(git_remote *remote, git_direction direction, const git_remote_callbacks *callbacks, const git_remote_connection_opts *conn)
{
	git_transport *t;
	git_buf url = GIT_BUF_INIT;
	int flags = GIT_TRANSPORTFLAGS_NONE;
	int error;
	void *payload = NULL;
	git_cred_acquire_cb credentials = NULL;
	git_transport_cb transport = NULL;

	FUNC1(remote);

	if (callbacks) {
		FUNC0(callbacks, GIT_REMOTE_CALLBACKS_VERSION, "git_remote_callbacks");
		credentials = callbacks->credentials;
		transport   = callbacks->transport;
		payload     = callbacks->payload;
	}

	if (conn->proxy)
		FUNC0(conn->proxy, GIT_PROXY_OPTIONS_VERSION, "git_proxy_options");

	t = remote->transport;

	if ((error = FUNC3(&url, remote, direction, callbacks)) < 0)
		goto on_error;

	/* If we don't have a transport object yet, and the caller specified a
	 * custom transport factory, use that */
	if (!t && transport &&
		(error = transport(&t, remote, payload)) < 0)
		goto on_error;

	/* If we still don't have a transport, then use the global
	 * transport registrations which map URI schemes to transport factories */
	if (!t && (error = FUNC4(&t, remote, url.ptr)) < 0)
		goto on_error;

	if ((error = FUNC6(t, conn->custom_headers)) != 0)
		goto on_error;

	if ((error = FUNC5(t, callbacks)) < 0 ||
	    (error = t->connect(t, url.ptr, credentials, payload, conn->proxy, direction, flags)) != 0)
		goto on_error;

	remote->transport = t;

	FUNC2(&url);

	return 0;

on_error:
	if (t)
		t->free(t);

	FUNC2(&url);

	if (t == remote->transport)
		remote->transport = NULL;

	return error;
}