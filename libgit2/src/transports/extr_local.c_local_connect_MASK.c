#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int connected; int direction; int flags; int /*<<< orphan*/ * repo; int /*<<< orphan*/  url; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ transport_local ;
typedef  int /*<<< orphan*/  git_transport ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  void git_proxy_options ;
typedef  void const* git_cred_acquire_cb ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(
	git_transport *transport,
	const char *url,
	git_cred_acquire_cb cred_acquire_cb,
	void *cred_acquire_payload,
	const git_proxy_options *proxy,
	int direction, int flags)
{
	git_repository *repo;
	int error;
	transport_local *t = (transport_local *) transport;
	const char *path;
	git_buf buf = GIT_BUF_INIT;

	FUNC1(cred_acquire_cb);
	FUNC1(cred_acquire_payload);
	FUNC1(proxy);

	if (t->connected)
		return 0;

	FUNC2(&t->refs);

	t->url = FUNC3(url);
	FUNC0(t->url);
	t->direction = direction;
	t->flags = flags;

	/* 'url' may be a url or path; convert to a path */
	if ((error = FUNC6(&buf, url)) < 0) {
		FUNC5(&buf);
		return error;
	}
	path = FUNC4(&buf);

	error = FUNC7(&repo, path);

	FUNC5(&buf);

	if (error < 0)
		return -1;

	t->repo = repo;

	if (FUNC8(t) < 0)
		return -1;

	t->connected = 1;

	return 0;
}