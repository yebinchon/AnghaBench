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
struct update_xdata {struct nl_parser_param* params; int /*<<< orphan*/  ops; } ;
struct nl_sock {int /*<<< orphan*/  s_cb; } ;
struct nl_parser_param {int dummy; } ;
struct nl_cb {int dummy; } ;
struct nl_cache {int /*<<< orphan*/  c_ops; } ;

/* Variables and functions */
 int NLE_NOMEM ; 
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_cache*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 struct nl_cb* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct update_xdata*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct nl_sock*,struct nl_cb*) ; 
 int /*<<< orphan*/  update_msg_parser ; 

int FUNC7(struct nl_sock *sk, struct nl_cache *cache,
		   struct nl_parser_param *param)
{
	int err;
	struct nl_cb *cb;
	struct update_xdata x = {
		.ops = cache->c_ops,
		.params = param,
	};

	FUNC0(1, "Picking up answer for cache %p <%s>...\n",
		  cache, FUNC1(cache));

	cb = FUNC2(sk->s_cb);
	if (cb == NULL)
		return -NLE_NOMEM;

	FUNC4(cb, NL_CB_VALID, NL_CB_CUSTOM, update_msg_parser, &x);

	err = FUNC6(sk, cb);
	if (err < 0)
		FUNC0(2, "While picking up for %p <%s>, recvmsgs() returned " \
		       "%d: %s", cache, FUNC1(cache),
		       err, FUNC5(err));

	FUNC3(cb);

	return err;
}