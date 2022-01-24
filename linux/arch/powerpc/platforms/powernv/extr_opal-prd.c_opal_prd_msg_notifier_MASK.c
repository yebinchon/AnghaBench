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
struct opal_prd_msg_queue_item {int /*<<< orphan*/  list; int /*<<< orphan*/  msg; } ;
struct opal_prd_msg_header {int /*<<< orphan*/  size; } ;
struct opal_msg {scalar_t__ params; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long OPAL_MSG_PRD ; 
 unsigned long OPAL_MSG_PRD2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct opal_prd_msg_queue_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  opal_prd_msg_queue ; 
 int /*<<< orphan*/  opal_prd_msg_queue_lock ; 
 int /*<<< orphan*/  opal_prd_msg_wait ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *nb,
		unsigned long msg_type, void *_msg)
{
	struct opal_prd_msg_queue_item *item;
	struct opal_prd_msg_header *hdr;
	struct opal_msg *msg = _msg;
	int msg_size, item_size;
	unsigned long flags;

	if (msg_type != OPAL_MSG_PRD && msg_type != OPAL_MSG_PRD2)
		return 0;

	/* Calculate total size of the message and item we need to store. The
	 * 'size' field in the header includes the header itself. */
	hdr = (void *)msg->params;
	msg_size = FUNC0(hdr->size);
	item_size = msg_size + sizeof(*item) - sizeof(item->msg);

	item = FUNC1(item_size, GFP_ATOMIC);
	if (!item)
		return -ENOMEM;

	FUNC3(&item->msg, msg->params, msg_size);

	FUNC4(&opal_prd_msg_queue_lock, flags);
	FUNC2(&item->list, &opal_prd_msg_queue);
	FUNC5(&opal_prd_msg_queue_lock, flags);

	FUNC6(&opal_prd_msg_wait);

	return 0;
}