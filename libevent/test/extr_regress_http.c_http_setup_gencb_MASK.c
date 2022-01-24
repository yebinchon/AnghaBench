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
struct evhttp {int dummy; } ;
typedef  struct evhttp event_base ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int HTTP_BIND_SSL ; 
 struct evhttp* FUNC0 (struct evhttp*) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp*,char*,int /*<<< orphan*/ ,struct evhttp*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp*,void (*) (struct evhttp_request*,void*),void*) ; 
 int /*<<< orphan*/  ext_method_cb ; 
 int /*<<< orphan*/  http_badreq_cb ; 
 int /*<<< orphan*/  http_basic_cb ; 
 scalar_t__ FUNC5 (struct evhttp*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  http_chunked_cb ; 
 int /*<<< orphan*/  http_custom_cb ; 
 int /*<<< orphan*/  http_delay_cb ; 
 int /*<<< orphan*/  http_dispatcher_cb ; 
 int /*<<< orphan*/  http_genmethod_cb ; 
 int /*<<< orphan*/  http_large_cb ; 
 int /*<<< orphan*/  http_large_delay_cb ; 
 int /*<<< orphan*/  http_on_complete_cb ; 
 int /*<<< orphan*/  http_post_cb ; 
 int /*<<< orphan*/  http_put_cb ; 
 int /*<<< orphan*/  http_timeout_cb ; 
 int /*<<< orphan*/  https_bev ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct evhttp *
FUNC7(ev_uint16_t *pport, struct event_base *base, int mask,
	void (*cb)(struct evhttp_request *, void *), void *cbarg)
{
	struct evhttp *myhttp;

	/* Try a few different ports */
	myhttp = FUNC0(base);

	if (FUNC5(myhttp, pport, mask) < 0)
		return NULL;
#ifdef EVENT__HAVE_OPENSSL
	if (mask & HTTP_BIND_SSL) {
		init_ssl();
		evhttp_set_bevcb(myhttp, https_bev, NULL);
	}
#endif

	FUNC4(myhttp, cb, cbarg);

	/* add support for extended HTTP methods */
	FUNC3(myhttp, ext_method_cb);

	/* Register a callback for certain types of requests */
	FUNC2(myhttp, "/test", http_basic_cb, myhttp);
	FUNC2(myhttp, "/test nonconformant", http_basic_cb, myhttp);
	FUNC2(myhttp, "/timeout", http_timeout_cb, myhttp);
	FUNC2(myhttp, "/large", http_large_cb, base);
	FUNC2(myhttp, "/chunked", http_chunked_cb, base);
	FUNC2(myhttp, "/streamed", http_chunked_cb, base);
	FUNC2(myhttp, "/postit", http_post_cb, base);
	FUNC2(myhttp, "/putit", http_put_cb, base);
	FUNC2(myhttp, "/deleteit", http_genmethod_cb, base);
	FUNC2(myhttp, "/propfind", http_genmethod_cb, base);
	FUNC2(myhttp, "/proppatch", http_genmethod_cb, base);
	FUNC2(myhttp, "/mkcol", http_genmethod_cb, base);
	FUNC2(myhttp, "/lockit", http_genmethod_cb, base);
	FUNC2(myhttp, "/unlockit", http_genmethod_cb, base);
	FUNC2(myhttp, "/copyit", http_genmethod_cb, base);
	FUNC2(myhttp, "/moveit", http_genmethod_cb, base);
	FUNC2(myhttp, "/custom", http_custom_cb, base);
	FUNC2(myhttp, "/delay", http_delay_cb, base);
	FUNC2(myhttp, "/largedelay", http_large_delay_cb, base);
	FUNC2(myhttp, "/badrequest", http_badreq_cb, base);
	FUNC2(myhttp, "/oncomplete", http_on_complete_cb, base);
	FUNC2(myhttp, "/", http_dispatcher_cb, base);
	return (myhttp);
}