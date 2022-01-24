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
struct evrpc_req_generic {int /*<<< orphan*/ * rpc_data; int /*<<< orphan*/ * reply; int /*<<< orphan*/ * request; int /*<<< orphan*/ * hook_meta; struct evrpc* rpc; } ;
struct evrpc {int /*<<< orphan*/  (* reply_free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* request_free ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct evrpc_req_generic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct evrpc_req_generic* rpc_state)
{
	struct evrpc *rpc;
	FUNC0(rpc_state != NULL);
	rpc = rpc_state->rpc;

	/* clean up all memory */
	if (rpc_state->hook_meta != NULL)
		FUNC2(rpc_state->hook_meta);
	if (rpc_state->request != NULL)
		rpc->request_free(rpc_state->request);
	if (rpc_state->reply != NULL)
		rpc->reply_free(rpc_state->reply);
	if (rpc_state->rpc_data != NULL)
		FUNC1(rpc_state->rpc_data);
	FUNC3(rpc_state);
}