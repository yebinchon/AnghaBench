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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {long* args; int /*<<< orphan*/  nlh; } ;
struct drbd_resource {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRBD_NLA_CFG_CONTEXT ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned int GENL_HDRLEN ; 
 unsigned int GENL_MAGIC_FAMILY_HDRSZ ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  T_ctx_resource_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_cfg_context_nl_policy ; 
 int /*<<< orphan*/  drbd_destroy_resource ; 
 struct drbd_resource* FUNC4 (char const*) ; 
 struct nlattr* FUNC5 (int,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct netlink_callback*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct nlattr*) ; 
 struct nlattr* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int const) ; 

int FUNC12(struct sk_buff *skb, struct netlink_callback *cb)
{
	const unsigned hdrlen = GENL_HDRLEN + GENL_MAGIC_FAMILY_HDRSZ;
	struct nlattr *nla;
	const char *resource_name;
	struct drbd_resource *resource;
	int maxtype;

	/* Is this a followup call? */
	if (cb->args[0]) {
		/* ... of a single resource dump,
		 * and the resource iterator has been advanced already? */
		if (cb->args[2] && cb->args[2] != cb->args[0])
			return 0; /* DONE. */
		goto dump;
	}

	/* First call (from netlink_dump_start).  We need to figure out
	 * which resource(s) the user wants us to dump. */
	nla = FUNC9(FUNC10(cb->nlh, hdrlen),
			FUNC11(cb->nlh, hdrlen),
			DRBD_NLA_CFG_CONTEXT);

	/* No explicit context given.  Dump all. */
	if (!nla)
		goto dump;
	maxtype = FUNC0(drbd_cfg_context_nl_policy) - 1;
	nla = FUNC5(maxtype, nla, FUNC3(T_ctx_resource_name));
	if (FUNC1(nla))
		return FUNC2(nla);
	/* context given, but no name present? */
	if (!nla)
		return -EINVAL;
	resource_name = FUNC8(nla);
	if (!*resource_name)
		return -ENODEV;
	resource = FUNC4(resource_name);
	if (!resource)
		return -ENODEV;

	FUNC7(&resource->kref, drbd_destroy_resource); /* get_one_status() revalidates the resource */

	/* prime iterators, and set "filter" mode mark:
	 * only dump this connection. */
	cb->args[0] = (long)resource;
	/* cb->args[1] = 0; passed in this way. */
	cb->args[2] = (long)resource;

dump:
	return FUNC6(skb, cb);
}