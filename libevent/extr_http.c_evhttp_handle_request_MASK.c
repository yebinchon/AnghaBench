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
struct evhttp_request {int type; TYPE_1__* evcon; int /*<<< orphan*/ * uri; int /*<<< orphan*/  response_code; scalar_t__ userdone; } ;
struct evhttp_cb {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;} ;
struct evhttp {int allowed_methods; int /*<<< orphan*/  gencbarg; int /*<<< orphan*/  (* gencb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  callbacks; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bufev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FORMAT ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  HTTP_NOTFOUND ; 
 int /*<<< orphan*/  HTTP_NOTIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct evhttp_cb* FUNC6 (int /*<<< orphan*/ *,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp*,struct evhttp**,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_request*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct evhttp_request *req, void *arg)
{
	struct evhttp *http = arg;
	struct evhttp_cb *cb = NULL;
	const char *hostname;

	/* we have a new request on which the user needs to take action */
	req->userdone = 0;

	FUNC0(req->evcon->bufev, EV_READ);

	if (req->uri == NULL) {
		FUNC11(req, req->response_code, NULL);
		return;
	}

	if ((http->allowed_methods & req->type) == 0) {
		FUNC4(("Rejecting disallowed method %x (allowed: %x)\n",
			(unsigned)req->type, (unsigned)http->allowed_methods));
		FUNC11(req, HTTP_NOTIMPLEMENTED, NULL);
		return;
	}

	/* handle potential virtual hosts */
	hostname = FUNC9(req);
	if (hostname != NULL) {
		FUNC7(http, &http, hostname);
	}

	if ((cb = FUNC6(&http->callbacks, req)) != NULL) {
		(*cb->cb)(req, cb->cbarg);
		return;
	}

	/* Generic call back */
	if (http->gencb) {
		(*http->gencb)(req, http->gencbarg);
		return;
	} else {
		/* We need to send a 404 here */
#define ERR_FORMAT "<html><head>" \
		    "<title>404 Not Found</title>" \
		    "</head><body>" \
		    "<h1>Not Found</h1>" \
		    "<p>The requested URL %s was not found on this server.</p>"\
		    "</body></html>\n"

		char *escaped_html;
		struct evbuffer *buf;

		if ((escaped_html = FUNC8(req->uri)) == NULL) {
			FUNC5(req->evcon);
			return;
		}

		if ((buf = FUNC3()) == NULL) {
			FUNC13(escaped_html);
			FUNC5(req->evcon);
			return;
		}

		FUNC10(req, HTTP_NOTFOUND, "Not Found");

		FUNC1(buf, ERR_FORMAT, escaped_html);

		FUNC13(escaped_html);

		FUNC12(req, buf);

		FUNC2(buf);
#undef ERR_FORMAT
	}
}