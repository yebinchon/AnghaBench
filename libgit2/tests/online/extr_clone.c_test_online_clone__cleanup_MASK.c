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

/* Variables and functions */
 int /*<<< orphan*/  _orig_http_proxy ; 
 int /*<<< orphan*/  _orig_https_proxy ; 
 scalar_t__ _orig_proxies_need_reset ; 
 int /*<<< orphan*/  _remote_pass ; 
 int /*<<< orphan*/  _remote_proxy_host ; 
 int /*<<< orphan*/  _remote_proxy_pass ; 
 int /*<<< orphan*/  _remote_proxy_scheme ; 
 int /*<<< orphan*/  _remote_proxy_selfsigned ; 
 int /*<<< orphan*/  _remote_proxy_user ; 
 int /*<<< orphan*/  _remote_ssh_fingerprint ; 
 int /*<<< orphan*/  _remote_ssh_passphrase ; 
 int /*<<< orphan*/  _remote_ssh_privkey ; 
 int /*<<< orphan*/  _remote_ssh_pubkey ; 
 int /*<<< orphan*/  _remote_sslnoverify ; 
 int /*<<< orphan*/  _remote_url ; 
 int /*<<< orphan*/  _remote_user ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	if (g_repo) {
		FUNC3(g_repo);
		g_repo = NULL;
	}
	FUNC0("./foo");

	FUNC2(_remote_url);
	FUNC2(_remote_user);
	FUNC2(_remote_pass);
	FUNC2(_remote_sslnoverify);
	FUNC2(_remote_ssh_pubkey);
	FUNC2(_remote_ssh_privkey);
	FUNC2(_remote_ssh_passphrase);
	FUNC2(_remote_ssh_fingerprint);
	FUNC2(_remote_proxy_scheme);
	FUNC2(_remote_proxy_host);
	FUNC2(_remote_proxy_user);
	FUNC2(_remote_proxy_pass);
	FUNC2(_remote_proxy_selfsigned);

	if (_orig_proxies_need_reset) {
		FUNC1("HTTP_PROXY", _orig_http_proxy);
		FUNC1("HTTPS_PROXY", _orig_https_proxy);

		FUNC2(_orig_http_proxy);
		FUNC2(_orig_https_proxy);
	}
}