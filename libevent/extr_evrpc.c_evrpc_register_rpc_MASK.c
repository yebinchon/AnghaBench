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
struct evrpc_base {int /*<<< orphan*/  http_server; int /*<<< orphan*/  registered_rpcs; } ;
struct evrpc {void (* cb ) (struct evrpc_req_generic*,void*) ;void* cb_arg; struct evrpc_base* base; int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evrpc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct evrpc*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evrpc_request_cb ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC4(struct evrpc_base *base, struct evrpc *rpc,
    void (*cb)(struct evrpc_req_generic *, void *), void *cb_arg)
{
	char *constructed_uri = FUNC2(rpc->uri);

	rpc->base = base;
	rpc->cb = cb;
	rpc->cb_arg = cb_arg;

	FUNC0(&base->registered_rpcs, rpc, next);

	FUNC1(base->http_server,
	    constructed_uri,
	    evrpc_request_cb,
	    rpc);

	FUNC3(constructed_uri);

	return (0);
}