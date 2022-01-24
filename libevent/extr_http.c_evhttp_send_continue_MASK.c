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
struct evhttp_request {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct evhttp_connection {int /*<<< orphan*/  bufev; int /*<<< orphan*/ * cb_arg; int /*<<< orphan*/  cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evhttp_error_cb ; 
 int /*<<< orphan*/  evhttp_read_cb ; 
 int /*<<< orphan*/  evhttp_send_continue_done ; 
 int /*<<< orphan*/  evhttp_write_cb ; 

__attribute__((used)) static void
FUNC4(struct evhttp_connection *evcon,
			struct evhttp_request *req)
{
	FUNC0(evcon->bufev, EV_WRITE);
	FUNC3(FUNC1(evcon->bufev),
			"HTTP/%d.%d 100 Continue\r\n\r\n",
			req->major, req->minor);
	evcon->cb = evhttp_send_continue_done;
	evcon->cb_arg = NULL;
	FUNC2(evcon->bufev,
	    evhttp_read_cb,
	    evhttp_write_cb,
	    evhttp_error_cb,
	    evcon);
}