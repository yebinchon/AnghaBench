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
struct evhttp_request {size_t headers_size; int kind; TYPE_1__* evcon; } ;
struct evbuffer {int dummy; } ;
typedef  enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {size_t max_headers_size; } ;

/* Variables and functions */
 int ALL_DATA_READ ; 
 int DATA_CORRUPTED ; 
 int DATA_TOO_LONG ; 
 int /*<<< orphan*/  EVBUFFER_EOL_CRLF ; 
#define  EVHTTP_REQUEST 129 
#define  EVHTTP_RESPONSE 128 
 int MORE_DATA_EXPECTED ; 
 size_t FUNC0 (struct evbuffer*) ; 
 char* FUNC1 (struct evbuffer*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct evhttp_request*,char*,size_t) ; 
 int FUNC3 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

enum message_read_status
FUNC5(struct evhttp_request *req, struct evbuffer *buffer)
{
	char *line;
	enum message_read_status status = ALL_DATA_READ;

	size_t len;
	/* XXX try */
	line = FUNC1(buffer, &len, EVBUFFER_EOL_CRLF);
	if (line == NULL) {
		if (req->evcon != NULL &&
		    FUNC0(buffer) > req->evcon->max_headers_size)
			return (DATA_TOO_LONG);
		else
			return (MORE_DATA_EXPECTED);
	}

	if (req->evcon != NULL && len > req->evcon->max_headers_size) {
		FUNC4(line);
		return (DATA_TOO_LONG);
	}

	req->headers_size = len;

	switch (req->kind) {
	case EVHTTP_REQUEST:
		if (FUNC2(req, line, len) == -1)
			status = DATA_CORRUPTED;
		break;
	case EVHTTP_RESPONSE:
		if (FUNC3(req, line) == -1)
			status = DATA_CORRUPTED;
		break;
	default:
		status = DATA_CORRUPTED;
	}

	FUNC4(line);
	return (status);
}