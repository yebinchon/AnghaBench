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
struct TYPE_6__ {int /*<<< orphan*/  password; scalar_t__ username; } ;
struct TYPE_5__ {int /*<<< orphan*/  curlauth_param; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CURLAUTH_ANY ; 
 int /*<<< orphan*/  CURLOPT_PROXYAUTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ http_proxy_authmethod ; 
 TYPE_2__ proxy_auth ; 
 TYPE_1__* proxy_authmethods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(CURL *result)
{
	if (proxy_auth.username) {
		if (!proxy_auth.password)
			FUNC1(&proxy_auth);
		FUNC4(result);
	}

	FUNC6(&http_proxy_authmethod, FUNC3("GIT_HTTP_PROXY_AUTHMETHOD"));

#if LIBCURL_VERSION_NUM >= 0x070a07 /* CURLOPT_PROXYAUTH and CURLAUTH_ANY */
	if (http_proxy_authmethod) {
		int i;
		for (i = 0; i < ARRAY_SIZE(proxy_authmethods); i++) {
			if (!strcmp(http_proxy_authmethod, proxy_authmethods[i].name)) {
				curl_easy_setopt(result, CURLOPT_PROXYAUTH,
						proxy_authmethods[i].curlauth_param);
				break;
			}
		}
		if (i == ARRAY_SIZE(proxy_authmethods)) {
			warning("unsupported proxy authentication method %s: using anyauth",
					http_proxy_authmethod);
			curl_easy_setopt(result, CURLOPT_PROXYAUTH, CURLAUTH_ANY);
		}
	}
	else
		curl_easy_setopt(result, CURLOPT_PROXYAUTH, CURLAUTH_ANY);
#endif
}