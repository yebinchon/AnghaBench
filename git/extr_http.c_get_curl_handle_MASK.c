#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct TYPE_11__ {char* password; } ;
struct TYPE_10__ {char* protocol; } ;
struct TYPE_9__ {char* host; } ;
struct TYPE_8__ {char* name; char* curl_deleg_param; char* ssl_version; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 char* CURLAUTH_ANY ; 
 int /*<<< orphan*/  CURLOPT_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_CAPATH ; 
 int /*<<< orphan*/  CURLOPT_FTP_USE_EPSV ; 
 int /*<<< orphan*/  CURLOPT_GSSAPI_DELEGATION ; 
 int /*<<< orphan*/  CURLOPT_HTTPAUTH ; 
 int /*<<< orphan*/  CURLOPT_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLOPT_KEYPASSWD ; 
 int /*<<< orphan*/  CURLOPT_LOW_SPEED_LIMIT ; 
 int /*<<< orphan*/  CURLOPT_LOW_SPEED_TIME ; 
 int /*<<< orphan*/  CURLOPT_MAXREDIRS ; 
 int /*<<< orphan*/  CURLOPT_NETRC ; 
 int /*<<< orphan*/  CURLOPT_NOPROXY ; 
 int /*<<< orphan*/  CURLOPT_PINNEDPUBLICKEY ; 
 int /*<<< orphan*/  CURLOPT_POST301 ; 
 int /*<<< orphan*/  CURLOPT_POSTREDIR ; 
 int /*<<< orphan*/  CURLOPT_PROTOCOLS ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYTYPE ; 
 int /*<<< orphan*/  CURLOPT_PROXY_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_REDIR_PROTOCOLS ; 
 int /*<<< orphan*/  CURLOPT_SSLCERT ; 
 int /*<<< orphan*/  CURLOPT_SSLKEY ; 
 int /*<<< orphan*/  CURLOPT_SSLVERSION ; 
 int /*<<< orphan*/  CURLOPT_SSL_CIPHER_LIST ; 
 int /*<<< orphan*/  CURLOPT_SSL_OPTIONS ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_USE_SSL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 char* CURLPROXY_HTTPS ; 
 char* CURLPROXY_SOCKS4 ; 
 char* CURLPROXY_SOCKS4A ; 
 char* CURLPROXY_SOCKS5 ; 
 char* CURLPROXY_SOCKS5_HOSTNAME ; 
 char* CURLSSLOPT_NO_REVOKE ; 
 char* CURLUSESSL_TRY ; 
 char* CURL_NETRC_OPTIONAL ; 
 char* CURL_REDIR_POST_ALL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_6__ cert_auth ; 
 int /*<<< orphan*/  cookies_to_redact ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 char* curl_deleg ; 
 TYPE_1__* curl_deleg_levels ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 scalar_t__ curl_ftp_no_epsv ; 
 char* curl_http_proxy ; 
 scalar_t__ curl_http_version ; 
 char* curl_low_speed_limit ; 
 char* curl_low_speed_time ; 
 char* curl_no_proxy ; 
 scalar_t__ curl_ssl_try ; 
 int /*<<< orphan*/  curl_ssl_verify ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,long*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 TYPE_3__ http_auth ; 
 scalar_t__ http_proactive_auth ; 
 int /*<<< orphan*/  http_schannel_check_revoke ; 
 int /*<<< orphan*/  http_schannel_use_ssl_cainfo ; 
 char* http_ssl_backend ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__ proxy_auth ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char* ssl_cainfo ; 
 char* ssl_capath ; 
 char* ssl_cert ; 
 char* ssl_cipherlist ; 
 char* ssl_key ; 
 char* ssl_pinnedkey ; 
 char* ssl_version ; 
 TYPE_1__* sslversions ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,char,int) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 scalar_t__ trace_curl_data ; 
 int user_agent ; 
 int /*<<< orphan*/  FUNC22 (char**,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 

__attribute__((used)) static CURL *FUNC24(void)
{
	CURL *result = FUNC3();

	if (!result)
		FUNC5("curl_easy_init failed");

	if (!curl_ssl_verify) {
		FUNC4(result, CURLOPT_SSL_VERIFYPEER, 0);
		FUNC4(result, CURLOPT_SSL_VERIFYHOST, 0);
	} else {
		/* Verify authenticity of the peer's certificate */
		FUNC4(result, CURLOPT_SSL_VERIFYPEER, 1);
		/* The name in the cert must match whom we tried to connect */
		FUNC4(result, CURLOPT_SSL_VERIFYHOST, 2);
	}

#if LIBCURL_VERSION_NUM >= 0x072f00 // 7.47.0
    if (curl_http_version) {
		long opt;
		if (!get_curl_http_version_opt(curl_http_version, &opt)) {
			/* Set request use http version */
			curl_easy_setopt(result, CURLOPT_HTTP_VERSION, opt);
		}
    }
#endif

#if LIBCURL_VERSION_NUM >= 0x070907
	curl_easy_setopt(result, CURLOPT_NETRC, CURL_NETRC_OPTIONAL);
#endif
#ifdef LIBCURL_CAN_HANDLE_AUTH_ANY
	curl_easy_setopt(result, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
#endif

#ifdef CURLGSSAPI_DELEGATION_FLAG
	if (curl_deleg) {
		int i;
		for (i = 0; i < ARRAY_SIZE(curl_deleg_levels); i++) {
			if (!strcmp(curl_deleg, curl_deleg_levels[i].name)) {
				curl_easy_setopt(result, CURLOPT_GSSAPI_DELEGATION,
						curl_deleg_levels[i].curl_deleg_param);
				break;
			}
		}
		if (i == ARRAY_SIZE(curl_deleg_levels))
			warning("Unknown delegation method '%s': using default",
				curl_deleg);
	}
#endif

	if (http_ssl_backend && !FUNC18("schannel", http_ssl_backend) &&
	    !http_schannel_check_revoke) {
#if LIBCURL_VERSION_NUM >= 0x072c00
		curl_easy_setopt(result, CURLOPT_SSL_OPTIONS, CURLSSLOPT_NO_REVOKE);
#else
		FUNC23(FUNC1("CURLSSLOPT_NO_REVOKE not supported with cURL < 7.44.0"));
#endif
	}

	if (http_proactive_auth)
		FUNC11(result);

	if (FUNC8("GIT_SSL_VERSION"))
		ssl_version = FUNC8("GIT_SSL_VERSION");
	if (ssl_version && *ssl_version) {
		int i;
		for (i = 0; i < FUNC0(sslversions); i++) {
			if (!FUNC18(ssl_version, sslversions[i].name)) {
				FUNC4(result, CURLOPT_SSLVERSION,
						 sslversions[i].ssl_version);
				break;
			}
		}
		if (i == FUNC0(sslversions))
			FUNC23("unsupported ssl version %s: using default",
				ssl_version);
	}

	if (FUNC8("GIT_SSL_CIPHER_LIST"))
		ssl_cipherlist = FUNC8("GIT_SSL_CIPHER_LIST");
	if (ssl_cipherlist != NULL && *ssl_cipherlist)
		FUNC4(result, CURLOPT_SSL_CIPHER_LIST,
				ssl_cipherlist);

	if (ssl_cert != NULL)
		FUNC4(result, CURLOPT_SSLCERT, ssl_cert);
	if (FUNC10())
		FUNC4(result, CURLOPT_KEYPASSWD, cert_auth.password);
#if LIBCURL_VERSION_NUM >= 0x070903
	if (ssl_key != NULL)
		curl_easy_setopt(result, CURLOPT_SSLKEY, ssl_key);
#endif
#if LIBCURL_VERSION_NUM >= 0x070908
	if (ssl_capath != NULL)
		curl_easy_setopt(result, CURLOPT_CAPATH, ssl_capath);
#endif
#if LIBCURL_VERSION_NUM >= 0x072c00
	if (ssl_pinnedkey != NULL)
		curl_easy_setopt(result, CURLOPT_PINNEDPUBLICKEY, ssl_pinnedkey);
#endif
	if (http_ssl_backend && !FUNC18("schannel", http_ssl_backend) &&
	    !http_schannel_use_ssl_cainfo) {
		FUNC4(result, CURLOPT_CAINFO, NULL);
#if LIBCURL_VERSION_NUM >= 0x073400
		curl_easy_setopt(result, CURLOPT_PROXY_CAINFO, NULL);
#endif
	} else if (ssl_cainfo != NULL)
		FUNC4(result, CURLOPT_CAINFO, ssl_cainfo);

	if (curl_low_speed_limit > 0 && curl_low_speed_time > 0) {
		FUNC4(result, CURLOPT_LOW_SPEED_LIMIT,
				 curl_low_speed_limit);
		FUNC4(result, CURLOPT_LOW_SPEED_TIME,
				 curl_low_speed_time);
	}

	FUNC4(result, CURLOPT_MAXREDIRS, 20);
#if LIBCURL_VERSION_NUM >= 0x071301
	curl_easy_setopt(result, CURLOPT_POSTREDIR, CURL_REDIR_POST_ALL);
#elif LIBCURL_VERSION_NUM >= 0x071101
	curl_easy_setopt(result, CURLOPT_POST301, 1);
#endif
#ifdef CURLPROTO_HTTP
	curl_easy_setopt(result, CURLOPT_REDIR_PROTOCOLS,
			 get_curl_allowed_protocols(0));
	curl_easy_setopt(result, CURLOPT_PROTOCOLS,
			 get_curl_allowed_protocols(-1));
#else
	FUNC23(FUNC1("Protocol restrictions not supported with cURL < 7.19.4"));
#endif
	if (FUNC8("GIT_CURL_VERBOSE"))
		FUNC4(result, CURLOPT_VERBOSE, 1L);
	FUNC14(result);
	if (FUNC8("GIT_TRACE_CURL_NO_DATA"))
		trace_curl_data = 0;
	if (FUNC8("GIT_REDACT_COOKIES")) {
		FUNC20(&cookies_to_redact,
				  FUNC8("GIT_REDACT_COOKIES"), ',', -1);
		FUNC19(&cookies_to_redact);
	}

	FUNC4(result, CURLOPT_USERAGENT,
		user_agent ? user_agent : FUNC9());

	if (curl_ftp_no_epsv)
		FUNC4(result, CURLOPT_FTP_USE_EPSV, 0);

#ifdef CURLOPT_USE_SSL
	if (curl_ssl_try)
		curl_easy_setopt(result, CURLOPT_USE_SSL, CURLUSESSL_TRY);
#endif

	/*
	 * CURL also examines these variables as a fallback; but we need to query
	 * them here in order to decide whether to prompt for missing password (cf.
	 * init_curl_proxy_auth()).
	 *
	 * Unlike many other common environment variables, these are historically
	 * lowercase only. It appears that CURL did not know this and implemented
	 * only uppercase variants, which was later corrected to take both - with
	 * the exception of http_proxy, which is lowercase only also in CURL. As
	 * the lowercase versions are the historical quasi-standard, they take
	 * precedence here, as in CURL.
	 */
	if (!curl_http_proxy) {
		if (http_auth.protocol && !FUNC18(http_auth.protocol, "https")) {
			FUNC22(&curl_http_proxy, FUNC8("HTTPS_PROXY"));
			FUNC22(&curl_http_proxy, FUNC8("https_proxy"));
		} else {
			FUNC22(&curl_http_proxy, FUNC8("http_proxy"));
		}
		if (!curl_http_proxy) {
			FUNC22(&curl_http_proxy, FUNC8("ALL_PROXY"));
			FUNC22(&curl_http_proxy, FUNC8("all_proxy"));
		}
	}

	if (curl_http_proxy && curl_http_proxy[0] == '\0') {
		/*
		 * Handle case with the empty http.proxy value here to keep
		 * common code clean.
		 * NB: empty option disables proxying at all.
		 */
		FUNC4(result, CURLOPT_PROXY, "");
	} else if (curl_http_proxy) {
#if LIBCURL_VERSION_NUM >= 0x071800
		if (starts_with(curl_http_proxy, "socks5h"))
			curl_easy_setopt(result,
				CURLOPT_PROXYTYPE, CURLPROXY_SOCKS5_HOSTNAME);
		else if (starts_with(curl_http_proxy, "socks5"))
			curl_easy_setopt(result,
				CURLOPT_PROXYTYPE, CURLPROXY_SOCKS5);
		else if (starts_with(curl_http_proxy, "socks4a"))
			curl_easy_setopt(result,
				CURLOPT_PROXYTYPE, CURLPROXY_SOCKS4A);
		else if (starts_with(curl_http_proxy, "socks"))
			curl_easy_setopt(result,
				CURLOPT_PROXYTYPE, CURLPROXY_SOCKS4);
#endif
#if LIBCURL_VERSION_NUM >= 0x073400
		else if (starts_with(curl_http_proxy, "https"))
			curl_easy_setopt(result,
				CURLOPT_PROXYTYPE, CURLPROXY_HTTPS);
#endif
		if (FUNC21(curl_http_proxy, "://"))
			FUNC2(&proxy_auth, curl_http_proxy);
		else {
			struct strbuf url = STRBUF_INIT;
			FUNC16(&url, "http://%s", curl_http_proxy);
			FUNC2(&proxy_auth, url.buf);
			FUNC17(&url);
		}

		if (!proxy_auth.host)
			FUNC5("Invalid proxy URL '%s'", curl_http_proxy);

		FUNC4(result, CURLOPT_PROXY, proxy_auth.host);
#if LIBCURL_VERSION_NUM >= 0x071304
		var_override(&curl_no_proxy, getenv("NO_PROXY"));
		var_override(&curl_no_proxy, getenv("no_proxy"));
		curl_easy_setopt(result, CURLOPT_NOPROXY, curl_no_proxy);
#endif
	}
	FUNC12(result);

	FUNC13(result);

	return result;
}