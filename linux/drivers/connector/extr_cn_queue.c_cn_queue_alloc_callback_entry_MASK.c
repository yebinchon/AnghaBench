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
struct cn_queue_dev {int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct cn_callback_entry {void (* callback ) (struct cn_msg*,struct netlink_skb_parms*) ;TYPE_1__ id; struct cn_queue_dev* pdev; int /*<<< orphan*/  refcnt; } ;
struct cb_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cn_callback_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cb_id*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char const*) ; 

__attribute__((used)) static struct cn_callback_entry *
FUNC6(struct cn_queue_dev *dev, const char *name,
			      struct cb_id *id,
			      void (*callback)(struct cn_msg *,
					       struct netlink_skb_parms *))
{
	struct cn_callback_entry *cbq;

	cbq = FUNC1(sizeof(*cbq), GFP_KERNEL);
	if (!cbq) {
		FUNC3("Failed to create new callback queue.\n");
		return NULL;
	}

	FUNC4(&cbq->refcnt, 1);

	FUNC0(&dev->refcnt);
	cbq->pdev = dev;

	FUNC5(cbq->id.name, sizeof(cbq->id.name), "%s", name);
	FUNC2(&cbq->id.id, id, sizeof(struct cb_id));
	cbq->callback = callback;
	return cbq;
}