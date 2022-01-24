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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
struct evdns_base {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {void* base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ BASIC_REQUEST_BODY ; 
 int /*<<< orphan*/  BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 int EVHTTP_REQ_CUSTOM ; 
 int EVHTTP_REQ_GET ; 
 int HTTP_BIND_IPV6 ; 
 int HTTP_BIND_SSL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC2 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_connection* FUNC5 (void*,struct evdns_base*,struct bufferevent*,char const*,int /*<<< orphan*/ ) ; 
 struct evhttp_connection* FUNC6 (void*,struct evdns_base*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_connection*) ; 
 void* FUNC8 (struct evhttp_connection*) ; 
 int /*<<< orphan*/ * FUNC9 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_connection*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp*) ; 
 int FUNC13 (struct evhttp_connection*,struct evhttp_request*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC15 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct evhttp*,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 void* exit_base ; 
 int /*<<< orphan*/  ext_method_cb ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  http_request_done ; 
 int /*<<< orphan*/  http_request_empty_done ; 
 struct evhttp* FUNC20 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static void
FUNC24(struct basic_test_data *data, int persistent,
	const char *address, struct evdns_base *dnsbase, int ipv6, int family,
	int ssl)
{
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	struct evhttp *http;

	int mask = 0;
	if (ipv6)
		mask |= HTTP_BIND_IPV6;
	if (ssl)
		mask |= HTTP_BIND_SSL;

	http = FUNC20(&port, data->base, mask);

	test_ok = 0;
	if (!http && ipv6) {
		FUNC23();
	}
	FUNC22(http);

	FUNC16(http, EVHTTP_REQ_GET | EVHTTP_REQ_CUSTOM);

	if (ssl) {
#ifdef EVENT__HAVE_OPENSSL
		SSL *ssl = SSL_new(get_ssl_ctx());
		struct bufferevent *bev = bufferevent_openssl_socket_new(
			data->base, -1, ssl,
			BUFFEREVENT_SSL_CONNECTING, BEV_OPT_DEFER_CALLBACKS);
		bufferevent_openssl_set_allow_dirty_shutdown(bev, 1);

		evcon = evhttp_connection_base_bufferevent_new(data->base, dnsbase, bev, address, port);
#else
		FUNC23();
#endif
	} else {
		evcon = FUNC6(data->base, dnsbase, address, port);
	}
	FUNC22(evcon);
	FUNC11(evcon, family);

	FUNC22(FUNC8(evcon) == data->base);

	exit_base = data->base;

	FUNC22(FUNC9(evcon) == NULL);

	/* add support for CUSTOM method */
	FUNC10(evcon, ext_method_cb);

	/*
	 * At this point, we want to schedule a request to the HTTP
	 * server using our make request method.
	 */
	req = FUNC15(http_request_done, (void*) BASIC_REQUEST_BODY);

	/* Add the information that we care about */
	FUNC4(FUNC14(req), "Host", "somehost");

	/* We give ownership of the request to the connection */
	if (FUNC13(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC18(stdout, "FAILED\n");
		FUNC17(1);
	}

	FUNC3(data->base);

	FUNC22(test_ok);

	/* try to make another request over the same connection */
	test_ok = 0;

	req = FUNC15(http_request_done, (void*) BASIC_REQUEST_BODY);

	/* Add the information that we care about */
	FUNC4(FUNC14(req), "Host", "somehost");

	/*
	 * if our connections are not supposed to be persistent; request
	 * a close from the server.
	 */
	if (!persistent)
		FUNC4(FUNC14(req), "Connection", "close");

	/* We give ownership of the request to the connection */
	if (FUNC13(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC21("couldn't make request");
	}

	FUNC3(data->base);

	/* make another request: request empty reply */
	test_ok = 0;

	req = FUNC15(http_request_empty_done, data->base);

	/* Add the information that we care about */
	FUNC4(FUNC14(req), "Empty", "itis");

	/* We give ownership of the request to the connection */
	if (FUNC13(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC21("Couldn't make request");
	}

	FUNC3(data->base);

	/* make a CUSTOM request */
	test_ok = 0;

	req = FUNC15(http_request_empty_done, data->base);

	/* our CUSTOM method doesn't have Body */
	FUNC4(FUNC14(req), "Empty", "itis");

	/* We give ownership of the request to the connection */
	if (FUNC13(evcon, req, EVHTTP_REQ_CUSTOM, "/test") == -1) {
		FUNC21("Couldn't make request");
	}

	FUNC3(data->base);

 end:
	if (evcon)
		FUNC7(evcon);
	if (http)
		FUNC12(http);
}