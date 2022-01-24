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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nbd_device {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NBD_ATTR_DEVICE_LIST ; 
 size_t NBD_ATTR_INDEX ; 
 int /*<<< orphan*/  NBD_CMD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 struct nbd_device* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nbd_genl_family ; 
 int /*<<< orphan*/  nbd_index_idr ; 
 int /*<<< orphan*/  nbd_index_mutex ; 
 int nbd_total_devices ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct nbd_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  status_cb ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr *dev_list;
	struct sk_buff *reply;
	void *reply_head;
	size_t msg_size;
	int index = -1;
	int ret = -ENOMEM;

	if (info->attrs[NBD_ATTR_INDEX])
		index = FUNC9(info->attrs[NBD_ATTR_INDEX]);

	FUNC6(&nbd_index_mutex);

	msg_size = FUNC12(FUNC8(sizeof(u32)) +
				  FUNC8(sizeof(u8)));
	msg_size *= (index == -1) ? nbd_total_devices : 1;

	reply = FUNC1(msg_size, GFP_KERNEL);
	if (!reply)
		goto out;
	reply_head = FUNC2(reply, info, &nbd_genl_family, 0,
				       NBD_CMD_STATUS);
	if (!reply_head) {
		FUNC13(reply);
		goto out;
	}

	dev_list = FUNC11(reply, NBD_ATTR_DEVICE_LIST);
	if (index == -1) {
		ret = FUNC5(&nbd_index_idr, &status_cb, reply);
		if (ret) {
			FUNC13(reply);
			goto out;
		}
	} else {
		struct nbd_device *nbd;
		nbd = FUNC4(&nbd_index_idr, index);
		if (nbd) {
			ret = FUNC14(nbd, reply);
			if (ret) {
				FUNC13(reply);
				goto out;
			}
		}
	}
	FUNC10(reply, dev_list);
	FUNC0(reply, reply_head);
	ret = FUNC3(reply, info);
out:
	FUNC7(&nbd_index_mutex);
	return ret;
}