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
typedef  int /*<<< orphan*/  unl_cb ;
struct unl {int loop_done; int /*<<< orphan*/  sock; } ;
struct nl_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_SEQ_CHECK ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 struct nl_cb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nl_cb*) ; 
 int /*<<< orphan*/  no_seq_check ; 

void FUNC4(struct unl *unl, unl_cb handler, void *arg)
{
	struct nl_cb *cb;

	cb = FUNC0(NL_CB_CUSTOM);
	unl->loop_done = false;
	FUNC2(cb, NL_CB_SEQ_CHECK, NL_CB_CUSTOM, no_seq_check, NULL);
	FUNC2(cb, NL_CB_VALID, NL_CB_CUSTOM, handler, arg);

	while (!unl->loop_done)
		FUNC3(unl->sock, cb);

	FUNC1(cb);
}