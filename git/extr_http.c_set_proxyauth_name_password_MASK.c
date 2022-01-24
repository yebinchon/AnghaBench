#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_PROXYPASSWORD ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERNAME ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERPWD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curl_proxyuserpwd ; 
 int /*<<< orphan*/  is_rfc3986_unreserved ; 
 TYPE_1__ proxy_auth ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(CURL *result)
{
#if LIBCURL_VERSION_NUM >= 0x071301
		curl_easy_setopt(result, CURLOPT_PROXYUSERNAME,
			proxy_auth.username);
		curl_easy_setopt(result, CURLOPT_PROXYPASSWORD,
			proxy_auth.password);
#else
		struct strbuf s = STRBUF_INIT;

		FUNC2(&s, proxy_auth.username,
					is_rfc3986_unreserved);
		FUNC1(&s, ':');
		FUNC2(&s, proxy_auth.password,
					is_rfc3986_unreserved);
		curl_proxyuserpwd = FUNC3(&s, NULL);
		FUNC0(result, CURLOPT_PROXYUSERPWD, curl_proxyuserpwd);
#endif
}