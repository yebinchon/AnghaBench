#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {int len; TYPE_1__ value; } ;
struct switch_port {int flags; int /*<<< orphan*/  id; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nl_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_PORTS ; 
 int /*<<< orphan*/  SWITCH_ATTR_PORT ; 
 int /*<<< orphan*/  SWITCH_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  SWITCH_PORT_ID ; 
 int SWLIB_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct nl_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nl_msg *msg, struct switch_val *val)
{
	struct nlattr *n;
	int i;

	/* TODO implement multipart? */
	if (val->len == 0)
		goto done;
	n = FUNC3(msg, SWITCH_ATTR_OP_VALUE_PORTS);
	if (!n)
		goto nla_put_failure;
	for (i = 0; i < val->len; i++) {
		struct switch_port *port = &val->value.ports[i];
		struct nlattr *np;

		np = FUNC3(msg, SWITCH_ATTR_PORT);
		if (!np)
			goto nla_put_failure;

		FUNC1(msg, SWITCH_PORT_ID, port->id);
		if (port->flags & SWLIB_PORT_FLAG_TAGGED)
			FUNC0(msg, SWITCH_PORT_FLAG_TAGGED);

		FUNC2(msg, np);
	}
	FUNC2(msg, n);
done:
	return 0;

nla_put_failure:
	return -1;
}