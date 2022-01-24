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
typedef  struct evhttp_request evhttp_connection ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 struct evhttp_request* FUNC4 (struct evhttp_request*) ; 
 struct evbuffer* FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC7(struct evhttp_request *req, void *arg)
{
	ev_ssize_t len;
	struct evbuffer *evbuf;
	struct evhttp_connection *evcon;

	FUNC0(req);
	evcon = FUNC4(req);
	FUNC0(evcon);

	evbuf = FUNC5(req);
	len = FUNC2(evbuf);
	FUNC6(FUNC3(evbuf, len), len, 1, stdout);
	FUNC1(evbuf, len);
}