#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* name; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_remote ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef  TYPE_2__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int FUNC12(git_remote *remote, bool use_ssl, char **proxy_url)
{
	git_config *cfg;
	git_config_entry *ce = NULL;
	git_buf val = GIT_BUF_INIT;
	int error;

	FUNC1(remote);

	if (!proxy_url || !remote->repo)
		return -1;

	*proxy_url = NULL;

	if ((error = FUNC11(&cfg, remote->repo)) < 0)
		return error;

	/* Go through the possible sources for proxy configuration, from most specific
	 * to least specific. */

	/* remote.<name>.proxy config setting */
	if (remote->name && remote->name[0]) {
		git_buf buf = GIT_BUF_INIT;

		if ((error = FUNC7(&buf, "remote.%s.proxy", remote->name)) < 0)
			return error;

		error = FUNC8(&ce, cfg, FUNC4(&buf), false);
		FUNC6(&buf);

		if (error < 0)
			return error;

		if (ce && ce->value) {
			*proxy_url = FUNC3(ce->value);
			goto found;
		}
	}

	/* http.proxy config setting */
	if ((error = FUNC8(&ce, cfg, "http.proxy", false)) < 0)
		return error;

	if (ce && ce->value) {
		*proxy_url = FUNC3(ce->value);
		goto found;
	}

	/* http_proxy / https_proxy environment variables */
	error = FUNC2(&val, use_ssl ? "https_proxy" : "http_proxy");

	/* try uppercase environment variables */
	if (error == GIT_ENOTFOUND)
		error = FUNC2(&val, use_ssl ? "HTTPS_PROXY" : "HTTP_PROXY");

	if (error < 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC10();
			error = 0;
		}

		return error;
	}

	*proxy_url = FUNC5(&val);

found:
	FUNC0(*proxy_url);
	FUNC9(ce);

	return 0;
}