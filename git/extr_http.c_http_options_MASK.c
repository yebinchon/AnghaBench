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
 int /*<<< orphan*/  HTTP_FOLLOW_ALWAYS ; 
 int /*<<< orphan*/  HTTP_FOLLOW_INITIAL ; 
 int /*<<< orphan*/  HTTP_FOLLOW_NONE ; 
 scalar_t__ LARGE_PACKET_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  curl_cookie_file ; 
 int /*<<< orphan*/  curl_deleg ; 
 int curl_empty_auth ; 
 int curl_ftp_no_epsv ; 
 int /*<<< orphan*/  curl_http_proxy ; 
 int /*<<< orphan*/  curl_http_version ; 
 long curl_low_speed_limit ; 
 long curl_low_speed_time ; 
 int curl_save_cookies ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int curl_ssl_try ; 
 int curl_ssl_verify ; 
 int /*<<< orphan*/ * extra_http_headers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*) ; 
 void* FUNC6 (char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC10 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  http_follow_config ; 
 scalar_t__ http_post_buffer ; 
 int /*<<< orphan*/  http_proxy_authmethod ; 
 int http_schannel_check_revoke ; 
 int http_schannel_use_ssl_cainfo ; 
 int /*<<< orphan*/  http_ssl_backend ; 
 void* max_requests ; 
 int min_curl_sessions ; 
 int /*<<< orphan*/  ssl_cainfo ; 
 int /*<<< orphan*/  ssl_capath ; 
 int /*<<< orphan*/  ssl_cert ; 
 int ssl_cert_password_required ; 
 int /*<<< orphan*/  ssl_cipherlist ; 
 int /*<<< orphan*/  ssl_key ; 
 int /*<<< orphan*/  ssl_pinnedkey ; 
 int /*<<< orphan*/  ssl_version ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  user_agent ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(const char *var, const char *value, void *cb)
{
	if (!FUNC11("http.version", var)) {
		return FUNC9(&curl_http_version, var, value);
	}
	if (!FUNC11("http.sslverify", var)) {
		curl_ssl_verify = FUNC5(var, value);
		return 0;
	}
	if (!FUNC11("http.sslcipherlist", var))
		return FUNC9(&ssl_cipherlist, var, value);
	if (!FUNC11("http.sslversion", var))
		return FUNC9(&ssl_version, var, value);
	if (!FUNC11("http.sslcert", var))
		return FUNC7(&ssl_cert, var, value);
#if LIBCURL_VERSION_NUM >= 0x070903
	if (!strcmp("http.sslkey", var))
		return git_config_pathname(&ssl_key, var, value);
#endif
#if LIBCURL_VERSION_NUM >= 0x070908
	if (!strcmp("http.sslcapath", var))
		return git_config_pathname(&ssl_capath, var, value);
#endif
	if (!FUNC11("http.sslcainfo", var))
		return FUNC7(&ssl_cainfo, var, value);
	if (!FUNC11("http.sslcertpasswordprotected", var)) {
		ssl_cert_password_required = FUNC5(var, value);
		return 0;
	}
	if (!FUNC11("http.ssltry", var)) {
		curl_ssl_try = FUNC5(var, value);
		return 0;
	}
	if (!FUNC11("http.sslbackend", var)) {
		FUNC4(http_ssl_backend);
		http_ssl_backend = FUNC13(value);
		return 0;
	}

	if (!FUNC11("http.schannelcheckrevoke", var)) {
		http_schannel_check_revoke = FUNC5(var, value);
		return 0;
	}

	if (!FUNC11("http.schannelusesslcainfo", var)) {
		http_schannel_use_ssl_cainfo = FUNC5(var, value);
		return 0;
	}

	if (!FUNC11("http.minsessions", var)) {
		min_curl_sessions = FUNC6(var, value);
#ifndef USE_CURL_MULTI
		if (min_curl_sessions > 1)
			min_curl_sessions = 1;
#endif
		return 0;
	}
#ifdef USE_CURL_MULTI
	if (!strcmp("http.maxrequests", var)) {
		max_requests = git_config_int(var, value);
		return 0;
	}
#endif
	if (!FUNC11("http.lowspeedlimit", var)) {
		curl_low_speed_limit = (long)FUNC6(var, value);
		return 0;
	}
	if (!FUNC11("http.lowspeedtime", var)) {
		curl_low_speed_time = (long)FUNC6(var, value);
		return 0;
	}

	if (!FUNC11("http.noepsv", var)) {
		curl_ftp_no_epsv = FUNC5(var, value);
		return 0;
	}
	if (!FUNC11("http.proxy", var))
		return FUNC9(&curl_http_proxy, var, value);

	if (!FUNC11("http.proxyauthmethod", var))
		return FUNC9(&http_proxy_authmethod, var, value);

	if (!FUNC11("http.cookiefile", var))
		return FUNC7(&curl_cookie_file, var, value);
	if (!FUNC11("http.savecookies", var)) {
		curl_save_cookies = FUNC5(var, value);
		return 0;
	}

	if (!FUNC11("http.postbuffer", var)) {
		http_post_buffer = FUNC8(var, value);
		if (http_post_buffer < 0)
			FUNC12(FUNC0("negative value for http.postbuffer; defaulting to %d"), LARGE_PACKET_MAX);
		if (http_post_buffer < LARGE_PACKET_MAX)
			http_post_buffer = LARGE_PACKET_MAX;
		return 0;
	}

	if (!FUNC11("http.useragent", var))
		return FUNC9(&user_agent, var, value);

	if (!FUNC11("http.emptyauth", var)) {
		if (value && !FUNC11("auto", value))
			curl_empty_auth = -1;
		else
			curl_empty_auth = FUNC5(var, value);
		return 0;
	}

	if (!FUNC11("http.delegation", var)) {
#ifdef CURLGSSAPI_DELEGATION_FLAG
		return git_config_string(&curl_deleg, var, value);
#else
		FUNC12(FUNC0("Delegation control is not supported with cURL < 7.22.0"));
		return 0;
#endif
	}

	if (!FUNC11("http.pinnedpubkey", var)) {
#if LIBCURL_VERSION_NUM >= 0x072c00
		return git_config_pathname(&ssl_pinnedkey, var, value);
#else
		FUNC12(FUNC0("Public key pinning not supported with cURL < 7.44.0"));
		return 0;
#endif
	}

	if (!FUNC11("http.extraheader", var)) {
		if (!value) {
			return FUNC1(var);
		} else if (!*value) {
			FUNC3(extra_http_headers);
			extra_http_headers = NULL;
		} else {
			extra_http_headers =
				FUNC2(extra_http_headers, value);
		}
		return 0;
	}

	if (!FUNC11("http.followredirects", var)) {
		if (value && !FUNC11(value, "initial"))
			http_follow_config = HTTP_FOLLOW_INITIAL;
		else if (FUNC5(var, value))
			http_follow_config = HTTP_FOLLOW_ALWAYS;
		else
			http_follow_config = HTTP_FOLLOW_NONE;
		return 0;
	}

	/* Fall back on the default ones */
	return FUNC10(var, value, cb);
}