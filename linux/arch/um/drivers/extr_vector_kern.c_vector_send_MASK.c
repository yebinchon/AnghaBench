#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vector_queue {int max_depth; int queue_depth; int head; int /*<<< orphan*/  head_lock; int /*<<< orphan*/  dev; struct mmsghdr* mmsg_vector; int /*<<< orphan*/  tail_lock; } ;
struct TYPE_4__ {int tx_queue_max; int tx_queue_running_average; int /*<<< orphan*/  tx_restart_queue; } ;
struct vector_private {int in_write_poll; int in_error; int /*<<< orphan*/  tx_poll; TYPE_2__ estats; int /*<<< orphan*/  dev; TYPE_1__* fds; } ;
struct mmsghdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_fd; } ;

/* Variables and functions */
 int FUNC0 (struct vector_queue*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct vector_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct mmsghdr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct vector_queue *qi)
{
	struct vector_private *vp = FUNC3(qi->dev);
	struct mmsghdr *send_from;
	int result = 0, send_len, queue_depth = qi->max_depth;

	if (FUNC6(&qi->head_lock)) {
		if (FUNC6(&qi->tail_lock)) {
			/* update queue_depth to current value */
			queue_depth = qi->queue_depth;
			FUNC7(&qi->tail_lock);
			while (queue_depth > 0) {
				/* Calculate the start of the vector */
				send_len = queue_depth;
				send_from = qi->mmsg_vector;
				send_from += qi->head;
				/* Adjust vector size if wraparound */
				if (send_len + qi->head > qi->max_depth)
					send_len = qi->max_depth - qi->head;
				/* Try to TX as many packets as possible */
				if (send_len > 0) {
					result = FUNC9(
						 vp->fds->tx_fd,
						 send_from,
						 send_len,
						 0
					);
					vp->in_write_poll =
						(result != send_len);
				}
				/* For some of the sendmmsg error scenarios
				 * we may end being unsure in the TX success
				 * for all packets. It is safer to declare
				 * them all TX-ed and blame the network.
				 */
				if (result < 0) {
					if (FUNC1())
						FUNC2(vp->dev, "sendmmsg err=%i\n",
							result);
					vp->in_error = true;
					result = send_len;
				}
				if (result > 0) {
					queue_depth =
						FUNC0(qi, result);
					/* This is equivalent to an TX IRQ.
					 * Restart the upper layers to feed us
					 * more packets.
					 */
					if (result > vp->estats.tx_queue_max)
						vp->estats.tx_queue_max = result;
					vp->estats.tx_queue_running_average =
						(vp->estats.tx_queue_running_average + result) >> 1;
				}
				FUNC4(qi->dev);
				FUNC5(qi->dev);
				/* if TX is busy, break out of the send loop,
				 *  poll write IRQ will reschedule xmit for us
				 */
				if (result != send_len) {
					vp->estats.tx_restart_queue++;
					break;
				}
			}
		}
		FUNC7(&qi->head_lock);
	} else {
		FUNC8(&vp->tx_poll);
	}
	return queue_depth;
}