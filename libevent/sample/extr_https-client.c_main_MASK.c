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
typedef  int /*<<< orphan*/  uri ;
struct evkeyvalq {int dummy; } ;
struct evhttp_uri {int dummy; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC28 (struct event_base*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bufferevent* FUNC29 (struct event_base*,int,int) ; 
 int /*<<< orphan*/  cert_verify_callback ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (struct evbuffer*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC33 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC34 (struct event_base*) ; 
 struct event_base* FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (struct evkeyvalq*,char*,char const*) ; 
 struct evhttp_connection* FUNC37 (struct event_base*,int /*<<< orphan*/ *,struct bufferevent*,char const*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC39 (struct evhttp_connection*,int) ; 
 int /*<<< orphan*/  FUNC40 (struct evhttp_connection*,int) ; 
 int FUNC41 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 struct evbuffer* FUNC42 (struct evhttp_request*) ; 
 struct evkeyvalq* FUNC43 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC44 (int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC45 (struct evhttp_uri*) ; 
 char* FUNC46 (struct evhttp_uri*) ; 
 char* FUNC47 (struct evhttp_uri*) ; 
 int FUNC48 (struct evhttp_uri*) ; 
 char* FUNC49 (struct evhttp_uri*) ; 
 char* FUNC50 (struct evhttp_uri*) ; 
 struct evhttp_uri* FUNC51 (char const*) ; 
 int /*<<< orphan*/  FUNC52 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC54 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC56 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_request_done ; 
 int ignore_cert ; 
 int /*<<< orphan*/  FUNC57 (char*) ; 
 int /*<<< orphan*/  FUNC58 (char*,int) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC60 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC61 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC62 (char*,char*) ; 
 scalar_t__ FUNC63 (char const*) ; 
 int /*<<< orphan*/  FUNC64 () ; 

int
FUNC65(int argc, char **argv)
{
	int r;
	struct event_base *base = NULL;
	struct evhttp_uri *http_uri = NULL;
	const char *url = NULL, *data_file = NULL;
	const char *crt = NULL;
	const char *scheme, *host, *path, *query;
	char uri[256];
	int port;
	int retries = 0;
	int timeout = -1;

	SSL_CTX *ssl_ctx = NULL;
	SSL *ssl = NULL;
	struct bufferevent *bev;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req;
	struct evkeyvalq *output_headers;
	struct evbuffer *output_buffer;

	int i;
	int ret = 0;
	enum { HTTP, HTTPS } type = HTTP;

	for (i = 1; i < argc; i++) {
		if (!FUNC62("-url", argv[i])) {
			if (i < argc - 1) {
				url = argv[i + 1];
			} else {
				FUNC64();
				goto error;
			}
		} else if (!FUNC62("-crt", argv[i])) {
			if (i < argc - 1) {
				crt = argv[i + 1];
			} else {
				FUNC64();
				goto error;
			}
		} else if (!FUNC62("-ignore-cert", argv[i])) {
			ignore_cert = 1;
		} else if (!FUNC62("-data", argv[i])) {
			if (i < argc - 1) {
				data_file = argv[i + 1];
			} else {
				FUNC64();
				goto error;
			}
		} else if (!FUNC62("-retries", argv[i])) {
			if (i < argc - 1) {
				retries = FUNC26(argv[i + 1]);
			} else {
				FUNC64();
				goto error;
			}
		} else if (!FUNC62("-timeout", argv[i])) {
			if (i < argc - 1) {
				timeout = FUNC26(argv[i + 1]);
			} else {
				FUNC64();
				goto error;
			}
		} else if (!FUNC62("-help", argv[i])) {
			FUNC64();
			goto error;
		}
	}

	if (!url) {
		FUNC64();
		goto error;
	}

#ifdef _WIN32
	{
		WORD wVersionRequested;
		WSADATA wsaData;
		int err;

		wVersionRequested = MAKEWORD(2, 2);

		err = WSAStartup(wVersionRequested, &wsaData);
		if (err != 0) {
			printf("WSAStartup failed with error: %d\n", err);
			goto error;
		}
	}
#endif // _WIN32

	http_uri = FUNC51(url);
	if (http_uri == NULL) {
		FUNC30("malformed url");
		goto error;
	}

	scheme = FUNC50(http_uri);
	if (scheme == NULL || (FUNC61(scheme, "https") != 0 &&
	                       FUNC61(scheme, "http") != 0)) {
		FUNC30("url must be http or https");
		goto error;
	}

	host = FUNC46(http_uri);
	if (host == NULL) {
		FUNC30("url must have a host");
		goto error;
	}

	port = FUNC48(http_uri);
	if (port == -1) {
		port = (FUNC61(scheme, "http") == 0) ? 80 : 443;
	}

	path = FUNC47(http_uri);
	if (FUNC63(path) == 0) {
		path = "/";
	}

	query = FUNC49(http_uri);
	if (query == NULL) {
		FUNC60(uri, sizeof(uri) - 1, "%s", path);
	} else {
		FUNC60(uri, sizeof(uri) - 1, "%s?%s", path, query);
	}
	uri[sizeof(uri) - 1] = '\0';

#if (OPENSSL_VERSION_NUMBER < 0x10100000L) || \
	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x20700000L)
	// Initialize OpenSSL
	FUNC17();
	FUNC2();
	FUNC18();
	FUNC7();
#endif

	/* This isn't strictly necessary... OpenSSL performs RAND_poll
	 * automatically on first use of random number generator. */
	r = FUNC8();
	if (r == 0) {
		FUNC31("RAND_poll");
		goto error;
	}

	/* Create a new OpenSSL context */
	ssl_ctx = FUNC13(FUNC21());
	if (!ssl_ctx) {
		FUNC31("SSL_CTX_new");
		goto error;
	}

	if (crt == NULL) {
		X509_STORE *store;
		/* Attempt to use the system's trusted root certificates. */
		store = FUNC11(ssl_ctx);
#ifdef _WIN32
		if (add_cert_for_store(store, "CA") < 0 ||
		    add_cert_for_store(store, "AuthRoot") < 0 ||
		    add_cert_for_store(store, "ROOT") < 0) {
			goto error;
		}
#else // _WIN32
		if (FUNC24(store) != 1) {
			FUNC31("X509_STORE_set_default_paths");
			goto error;
		}
#endif // _WIN32
	} else {
		if (FUNC12(ssl_ctx, crt, NULL) != 1) {
			FUNC31("SSL_CTX_load_verify_locations");
			goto error;
		}
	}
	/* Ask OpenSSL to verify the server certificate.  Note that this
	 * does NOT include verifying that the hostname is correct.
	 * So, by itself, this means anyone with any legitimate
	 * CA-issued certificate for any website, can impersonate any
	 * other website in the world.  This is not good.  See "The
	 * Most Dangerous Code in the World" article at
	 * https://crypto.stanford.edu/~dabo/pubs/abstracts/ssl-client-bugs.html
	 */
	FUNC15(ssl_ctx, SSL_VERIFY_PEER, NULL);
	/* This is how we solve the problem mentioned in the previous
	 * comment.  We "wrap" OpenSSL's validation routine in our
	 * own routine, which also validates the hostname by calling
	 * the code provided by iSECPartners.  Note that even though
	 * the "Everything You've Always Wanted to Know About
	 * Certificate Validation With OpenSSL (But Were Afraid to
	 * Ask)" paper from iSECPartners says very explicitly not to
	 * call SSL_CTX_set_cert_verify_callback (at the bottom of
	 * page 2), what we're doing here is safe because our
	 * cert_verify_callback() calls X509_verify_cert(), which is
	 * OpenSSL's built-in routine which would have been called if
	 * we hadn't set the callback.  Therefore, we're just
	 * "wrapping" OpenSSL's routine, not replacing it. */
	FUNC14(ssl_ctx, cert_verify_callback,
					  (void *) host);

	// Create event base
	base = FUNC35();
	if (!base) {
		FUNC57("event_base_new()");
		goto error;
	}

	// Create OpenSSL bufferevent and stack evhttp on top of it
	ssl = FUNC19(ssl_ctx);
	if (ssl == NULL) {
		FUNC31("SSL_new()");
		goto error;
	}

	#ifdef SSL_CTRL_SET_TLSEXT_HOSTNAME
	// Set hostname for SNI extension
	SSL_set_tlsext_host_name(ssl, host);
	#endif

	if (FUNC61(scheme, "http") == 0) {
		bev = FUNC29(base, -1, BEV_OPT_CLOSE_ON_FREE);
	} else {
		type = HTTPS;
		bev = FUNC28(base, -1, ssl,
			BUFFEREVENT_SSL_CONNECTING,
			BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
	}

	if (bev == NULL) {
		FUNC55(stderr, "bufferevent_openssl_socket_new() failed\n");
		goto error;
	}

	FUNC27(bev, 1);

	// For simplicity, we let DNS resolution block. Everything else should be
	// asynchronous though.
	evcon = FUNC37(base, NULL, bev,
		host, port);
	if (evcon == NULL) {
		FUNC55(stderr, "evhttp_connection_base_bufferevent_new() failed\n");
		goto error;
	}

	if (retries > 0) {
		FUNC39(evcon, retries);
	}
	if (timeout >= 0) {
		FUNC40(evcon, timeout);
	}

	// Fire off the request
	req = FUNC44(http_request_done, bev);
	if (req == NULL) {
		FUNC55(stderr, "evhttp_request_new() failed\n");
		goto error;
	}

	output_headers = FUNC43(req);
	FUNC36(output_headers, "Host", host);
	FUNC36(output_headers, "Connection", "close");

	if (data_file) {
		/* NOTE: In production code, you'd probably want to use
		 * evbuffer_add_file() or evbuffer_add_file_segment(), to
		 * avoid needless copying. */
		FILE * f = FUNC54(data_file, "rb");
		char buf[1024];
		size_t s;
		size_t bytes = 0;

		if (!f) {
			FUNC64();
			goto error;
		}

		output_buffer = FUNC42(req);
		while ((s = FUNC56(buf, 1, sizeof(buf), f)) > 0) {
			FUNC32(output_buffer, buf, s);
			bytes += s;
		}
		FUNC52(buf, sizeof(buf)-1, "%lu", (unsigned long)bytes);
		FUNC36(output_headers, "Content-Length", buf);
		FUNC53(f);
	}

	r = FUNC41(evcon, req, data_file ? EVHTTP_REQ_POST : EVHTTP_REQ_GET, uri);
	if (r != 0) {
		FUNC55(stderr, "evhttp_make_request() failed\n");
		goto error;
	}

	FUNC33(base);
	goto cleanup;

error:
	ret = 1;
cleanup:
	if (evcon)
		FUNC38(evcon);
	if (http_uri)
		FUNC45(http_uri);
	if (base)
		FUNC34(base);

	if (ssl_ctx)
		FUNC10(ssl_ctx);
	if (type == HTTP && ssl)
		FUNC16(ssl);
#if (OPENSSL_VERSION_NUMBER < 0x10100000L) || \
	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x20700000L)
	FUNC5();
	FUNC1();

#if OPENSSL_VERSION_NUMBER < 0x10000000L
	FUNC3(0);
#else
	ERR_remove_thread_state(NULL);
#endif

	FUNC0();

	FUNC59(FUNC9());
#endif /* (OPENSSL_VERSION_NUMBER < 0x10100000L) || \
	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x20700000L) */

#ifdef _WIN32
	WSACleanup();
#endif

	return ret;
}