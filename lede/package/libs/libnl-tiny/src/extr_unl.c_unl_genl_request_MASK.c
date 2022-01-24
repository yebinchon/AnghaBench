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
typedef  scalar_t__ unl_cb ;
struct unl {int /*<<< orphan*/  sock; } ;
struct nl_msg {int dummy; } ;
struct nl_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL_CB_ACK ; 
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_FINISH ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 int /*<<< orphan*/  ack_handler ; 
 int /*<<< orphan*/  error_handler ; 
 int /*<<< orphan*/  finish_handler ; 
 struct nl_cb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nl_cb*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct nl_msg*) ; 

int FUNC7(struct unl *unl, struct nl_msg *msg, unl_cb handler, void *arg)
{
	struct nl_cb *cb;
	int err;

	cb = FUNC0(NL_CB_CUSTOM);
	err = FUNC5(unl->sock, msg);
	if (err < 0)
		goto out;

	err = 1;
	FUNC1(cb, NL_CB_CUSTOM, error_handler, &err);
	FUNC3(cb, NL_CB_FINISH, NL_CB_CUSTOM, finish_handler, &err);
	FUNC3(cb, NL_CB_ACK, NL_CB_CUSTOM, ack_handler, &err);
	if (handler)
		FUNC3(cb, NL_CB_VALID, NL_CB_CUSTOM, handler, arg);

	while (err > 0)
		FUNC4(unl->sock, cb);

out:
	FUNC6(msg);
	FUNC2(cb);
	return err;
}