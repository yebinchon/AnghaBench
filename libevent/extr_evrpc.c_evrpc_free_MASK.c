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
struct evrpc_hook_ctx {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  registered_rpcs; } ;
struct evrpc_hook {int dummy; } ;
struct evrpc_base {int /*<<< orphan*/  output_hooks; int /*<<< orphan*/  input_hooks; int /*<<< orphan*/  paused_requests; int /*<<< orphan*/  registered_rpcs; } ;
struct evrpc {int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVRPC_INPUT ; 
 int /*<<< orphan*/  EVRPC_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evrpc_hook_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct evrpc_hook_ctx*,int /*<<< orphan*/ ,struct evrpc_hook*) ; 
 int FUNC4 (struct evrpc_hook_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evrpc_hook_ctx*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC6(struct evrpc_base *base)
{
	struct evrpc *rpc;
	struct evrpc_hook *hook;
	struct evrpc_hook_ctx *pause;
	int r;

	while ((rpc = FUNC1(&base->registered_rpcs)) != NULL) {
		r = FUNC4(base, rpc->uri);
		FUNC0(r == 0);
	}
	while ((pause = FUNC1(&base->paused_requests)) != NULL) {
		FUNC2(&base->paused_requests, pause, next);
		FUNC5(pause);
	}
	while ((hook = FUNC1(&base->input_hooks)) != NULL) {
		r = FUNC3(base, EVRPC_INPUT, hook);
		FUNC0(r);
	}
	while ((hook = FUNC1(&base->output_hooks)) != NULL) {
		r = FUNC3(base, EVRPC_OUTPUT, hook);
		FUNC0(r);
	}
	FUNC5(base);
}