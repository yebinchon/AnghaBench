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
struct cn_dev {int /*<<< orphan*/  cbdev; } ;
struct cb_id {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct cn_dev cdev ; 
 int /*<<< orphan*/  cn_already_initialized ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,struct cb_id*,void (*) (struct cn_msg*,struct netlink_skb_parms*)) ; 

int FUNC1(struct cb_id *id, const char *name,
		    void (*callback)(struct cn_msg *,
				     struct netlink_skb_parms *))
{
	int err;
	struct cn_dev *dev = &cdev;

	if (!cn_already_initialized)
		return -EAGAIN;

	err = FUNC0(dev->cbdev, name, id, callback);
	if (err)
		return err;

	return 0;
}