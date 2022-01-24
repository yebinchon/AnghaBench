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
struct evhttp_connection {int /*<<< orphan*/  bufev; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
#define  ALL_DATA_READ 132 
#define  DATA_CORRUPTED 131 
#define  DATA_TOO_LONG 130 
 int /*<<< orphan*/  EVREQ_HTTP_DATA_TOO_LONG ; 
 int /*<<< orphan*/  EV_READ ; 
#define  MORE_DATA_EXPECTED 129 
#define  REQUEST_CANCELED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct evhttp_request*,struct evbuffer*) ; 

__attribute__((used)) static void
FUNC5(struct evhttp_connection *evcon, struct evhttp_request *req)
{
	struct evbuffer *buf = FUNC1(evcon->bufev);

	switch (FUNC4(req, buf)) {
	case DATA_CORRUPTED:
	case DATA_TOO_LONG:
		FUNC3(evcon, EVREQ_HTTP_DATA_TOO_LONG);
		break;
	case ALL_DATA_READ:
		FUNC0(evcon->bufev, EV_READ);
		FUNC2(evcon);
		break;
	case MORE_DATA_EXPECTED:
	case REQUEST_CANCELED: /* ??? */
	default:
		break;
	}
}