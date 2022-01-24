#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_9__ {int /*<<< orphan*/  certificate_check; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {TYPE_1__ proxy_opts; } ;
struct TYPE_12__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_PROXY_AUTO ; 
 void* _orig_http_proxy ; 
 void* _orig_https_proxy ; 
 int _orig_proxies_need_reset ; 
 int /*<<< orphan*/  _remote_proxy_host ; 
 int /*<<< orphan*/  _remote_proxy_pass ; 
 char* _remote_proxy_scheme ; 
 int /*<<< orphan*/  _remote_proxy_user ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  proxy_cert_cb ; 

void FUNC7(void)
{
	git_buf url = GIT_BUF_INIT;

	if (!_remote_proxy_host || !_remote_proxy_user || !_remote_proxy_pass)
		FUNC3();

	_orig_http_proxy = FUNC0("HTTP_PROXY");
	_orig_https_proxy = FUNC0("HTTPS_PROXY");
	_orig_proxies_need_reset = 1;

	g_options.fetch_opts.proxy_opts.type = GIT_PROXY_AUTO;
	g_options.fetch_opts.proxy_opts.certificate_check = proxy_cert_cb;

	FUNC1(FUNC5(&url, "%s://%s:%s@%s/",
		_remote_proxy_scheme ? _remote_proxy_scheme : "http",
		_remote_proxy_user, _remote_proxy_pass, _remote_proxy_host));

	FUNC2("HTTP_PROXY", url.ptr);
	FUNC2("HTTPS_PROXY", url.ptr);

	FUNC1(FUNC6(&g_repo, "http://github.com/libgit2/TestGitRepository", "./foo", &g_options));

	FUNC4(&url);
}