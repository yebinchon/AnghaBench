#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nl_parser_param {struct dp_xdata* pp_arg; int /*<<< orphan*/  pp_cb; } ;
struct nl_msg {int dummy; } ;
struct nl_cache_ops {int dummy; } ;
struct dp_xdata {void (* cb ) (struct nl_object*,void*) ;void* arg; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_type; } ;

/* Variables and functions */
 int NLE_MSGTYPE_NOSUPPORT ; 
 struct nl_cache_ops* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nl_cache_ops*,int /*<<< orphan*/ *,TYPE_1__*,struct nl_parser_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*) ; 
 TYPE_1__* FUNC3 (struct nl_msg*) ; 
 int /*<<< orphan*/  parse_cb ; 

int FUNC4(struct nl_msg *msg, void (*cb)(struct nl_object *, void *),
		 void *arg)
{
	struct nl_cache_ops *ops;
	struct nl_parser_param p = {
		.pp_cb = parse_cb
	};
	struct dp_xdata x = {
		.cb = cb,
		.arg = arg,
	};

	ops = FUNC0(FUNC2(msg),
				     FUNC3(msg)->nlmsg_type);
	if (ops == NULL)
		return -NLE_MSGTYPE_NOSUPPORT;
	p.pp_arg = &x;

	return FUNC1(ops, NULL, FUNC3(msg), &p);
}