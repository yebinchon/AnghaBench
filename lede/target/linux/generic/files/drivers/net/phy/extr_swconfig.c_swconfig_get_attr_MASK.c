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
typedef  int /*<<< orphan*/  val ;
struct TYPE_2__ {struct switch_val* link; int /*<<< orphan*/  s; int /*<<< orphan*/  i; struct switch_val* ports; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_port_link {int dummy; } ;
struct switch_port {int dummy; } ;
struct switch_dev {int ports; struct switch_val linkbuf; struct switch_val* portbuf; } ;
struct switch_attr {int (* get ) (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;int type; } ;
struct sk_buff {int len; } ;
struct genlmsghdr {int cmd; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  nlhdr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct genlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_INT ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_LINK ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_PORTS ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_STR ; 
#define  SWITCH_TYPE_INT 131 
#define  SWITCH_TYPE_LINK 130 
#define  SWITCH_TYPE_PORTS 129 
#define  SWITCH_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct genlmsghdr*) ; 
 struct genlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct switch_val*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct genlmsghdr* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct switch_dev*,struct switch_attr const*,struct switch_val*) ; 
 struct switch_dev* FUNC12 (struct genl_info*) ; 
 struct switch_attr* FUNC13 (struct switch_dev*,struct genl_info*,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC14 (struct switch_dev*) ; 
 int FUNC15 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ,struct switch_val*) ; 
 int FUNC16 (struct sk_buff**,struct genl_info*,int /*<<< orphan*/ ,struct switch_val*) ; 
 int /*<<< orphan*/  switch_fam ; 

__attribute__((used)) static int
FUNC17(struct sk_buff *skb, struct genl_info *info)
{
	struct genlmsghdr *hdr = FUNC7(info->nlhdr);
	const struct switch_attr *attr;
	struct switch_dev *dev;
	struct sk_buff *msg = NULL;
	struct switch_val val;
	int err = -EINVAL;
	int cmd = hdr->cmd;

	dev = FUNC12(info);
	if (!dev)
		return -EINVAL;

	FUNC4(&val, 0, sizeof(val));
	attr = FUNC13(dev, info, &val);
	if (!attr || !attr->get)
		goto error;

	if (attr->type == SWITCH_TYPE_PORTS) {
		val.value.ports = dev->portbuf;
		FUNC4(dev->portbuf, 0,
			sizeof(struct switch_port) * dev->ports);
	} else if (attr->type == SWITCH_TYPE_LINK) {
		val.value.link = &dev->linkbuf;
		FUNC4(&dev->linkbuf, 0, sizeof(struct switch_port_link));
	}

	err = attr->get(dev, attr, &val);
	if (err)
		goto error;

	msg = FUNC9(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!msg)
		goto error;

	hdr = FUNC2(msg, info->snd_portid, info->snd_seq, &switch_fam,
			0, cmd);
	if (FUNC0(hdr))
		goto nla_put_failure;

	switch (attr->type) {
	case SWITCH_TYPE_INT:
		if (FUNC6(msg, SWITCH_ATTR_OP_VALUE_INT, val.value.i))
			goto nla_put_failure;
		break;
	case SWITCH_TYPE_STRING:
		if (FUNC5(msg, SWITCH_ATTR_OP_VALUE_STR, val.value.s))
			goto nla_put_failure;
		break;
	case SWITCH_TYPE_PORTS:
		err = FUNC16(&msg, info,
				SWITCH_ATTR_OP_VALUE_PORTS, &val);
		if (err < 0)
			goto nla_put_failure;
		break;
	case SWITCH_TYPE_LINK:
		err = FUNC15(msg, info,
					 SWITCH_ATTR_OP_VALUE_LINK, val.value.link);
		if (err < 0)
			goto nla_put_failure;
		break;
	default:
		FUNC10("invalid type in attribute\n");
		err = -EINVAL;
		goto nla_put_failure;
	}
	FUNC1(msg, hdr);
	err = msg->len;
	if (err < 0)
		goto nla_put_failure;

	FUNC14(dev);
	return FUNC3(msg, info);

nla_put_failure:
	if (msg)
		FUNC8(msg);
error:
	FUNC14(dev);
	if (!err)
		err = -ENOMEM;
	return err;
}