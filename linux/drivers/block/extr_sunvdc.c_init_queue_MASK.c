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
struct vdc_port {int /*<<< orphan*/  tag_set; } ;
struct request_queue {struct vdc_port* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  VDC_TX_RING_SIZE ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdc_mq_ops ; 

__attribute__((used)) static struct request_queue *FUNC2(struct vdc_port *port)
{
	struct request_queue *q;

	q = FUNC1(&port->tag_set, &vdc_mq_ops, VDC_TX_RING_SIZE,
					BLK_MQ_F_SHOULD_MERGE);
	if (FUNC0(q))
		return q;

	q->queuedata = port;
	return q;
}