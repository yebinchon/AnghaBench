#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vector_queue {int queue_depth; int max_depth; int tail; int /*<<< orphan*/  tail_lock; TYPE_4__* dev; struct sk_buff** skbuff_vector; int /*<<< orphan*/  head_lock; struct mmsghdr* mmsg_vector; } ;
struct vector_private {TYPE_2__* fds; } ;
struct sk_buff {int len; } ;
struct TYPE_6__ {int msg_iovlen; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_iov; } ;
struct mmsghdr {TYPE_1__ msg_hdr; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_9__ {TYPE_3__ stats; } ;
struct TYPE_7__ {int /*<<< orphan*/  remote_addr_size; int /*<<< orphan*/  remote_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 struct vector_private* FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct vector_private*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vector_queue*,int) ; 

__attribute__((used)) static int FUNC7(struct vector_queue *qi, struct sk_buff *skb)
{
	struct vector_private *vp = FUNC2(qi->dev);
	int queue_depth;
	int packet_len;
	struct mmsghdr *mmsg_vector = qi->mmsg_vector;
	int iov_count;

	FUNC4(&qi->tail_lock);
	FUNC4(&qi->head_lock);
	queue_depth = qi->queue_depth;
	FUNC5(&qi->head_lock);

	if (skb)
		packet_len = skb->len;

	if (queue_depth < qi->max_depth) {

		*(qi->skbuff_vector + qi->tail) = skb;
		mmsg_vector += qi->tail;
		iov_count = FUNC3(
			vp,
			skb,
			mmsg_vector->msg_hdr.msg_iov
		);
		if (iov_count < 1)
			goto drop;
		mmsg_vector->msg_hdr.msg_iovlen = iov_count;
		mmsg_vector->msg_hdr.msg_name = vp->fds->remote_addr;
		mmsg_vector->msg_hdr.msg_namelen = vp->fds->remote_addr_size;
		queue_depth = FUNC6(qi, 1);
	} else
		goto drop;
	FUNC5(&qi->tail_lock);
	return queue_depth;
drop:
	qi->dev->stats.tx_dropped++;
	if (skb != NULL) {
		packet_len = skb->len;
		FUNC0(skb);
		FUNC1(qi->dev, 1, packet_len);
	}
	FUNC5(&qi->tail_lock);
	return queue_depth;
}