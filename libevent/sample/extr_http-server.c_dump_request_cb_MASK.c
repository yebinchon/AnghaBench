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
struct evkeyvalq {struct evkeyval* tqh_first; } ;
struct TYPE_2__ {struct evkeyval* tqe_next; } ;
struct evkeyval {char const* key; char* value; TYPE_1__ next; } ;
struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
#define  EVHTTP_REQ_CONNECT 136 
#define  EVHTTP_REQ_DELETE 135 
#define  EVHTTP_REQ_GET 134 
#define  EVHTTP_REQ_HEAD 133 
#define  EVHTTP_REQ_OPTIONS 132 
#define  EVHTTP_REQ_PATCH 131 
#define  EVHTTP_REQ_POST 130 
#define  EVHTTP_REQ_PUT 129 
#define  EVHTTP_REQ_TRACE 128 
 scalar_t__ FUNC0 (struct evbuffer*) ; 
 int FUNC1 (struct evbuffer*,char*,int) ; 
 int FUNC2 (struct evhttp_request*) ; 
 struct evbuffer* FUNC3 (struct evhttp_request*) ; 
 struct evkeyvalq* FUNC4 (struct evhttp_request*) ; 
 char* FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC10(struct evhttp_request *req, void *arg)
{
	const char *cmdtype;
	struct evkeyvalq *headers;
	struct evkeyval *header;
	struct evbuffer *buf;

	switch (FUNC2(req)) {
	case EVHTTP_REQ_GET: cmdtype = "GET"; break;
	case EVHTTP_REQ_POST: cmdtype = "POST"; break;
	case EVHTTP_REQ_HEAD: cmdtype = "HEAD"; break;
	case EVHTTP_REQ_PUT: cmdtype = "PUT"; break;
	case EVHTTP_REQ_DELETE: cmdtype = "DELETE"; break;
	case EVHTTP_REQ_OPTIONS: cmdtype = "OPTIONS"; break;
	case EVHTTP_REQ_TRACE: cmdtype = "TRACE"; break;
	case EVHTTP_REQ_CONNECT: cmdtype = "CONNECT"; break;
	case EVHTTP_REQ_PATCH: cmdtype = "PATCH"; break;
	default: cmdtype = "unknown"; break;
	}

	FUNC8("Received a %s request for %s\nHeaders:\n",
	    cmdtype, FUNC5(req));

	headers = FUNC4(req);
	for (header = headers->tqh_first; header;
	    header = header->next.tqe_next) {
		FUNC8("  %s: %s\n", header->key, header->value);
	}

	buf = FUNC3(req);
	FUNC9("Input data: <<<");
	while (FUNC0(buf)) {
		int n;
		char cbuf[128];
		n = FUNC1(buf, cbuf, sizeof(cbuf));
		if (n > 0)
			(void) FUNC7(cbuf, 1, n, stdout);
	}
	FUNC9(">>>");

	FUNC6(req, 200, "OK", NULL);
}