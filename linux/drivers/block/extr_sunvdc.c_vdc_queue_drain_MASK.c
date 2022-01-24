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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct vdc_port {int drain; TYPE_2__ vio; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vdc_port *port)
{
	struct request_queue *q = port->disk->queue;

	/*
	 * Mark the queue as draining, then freeze/quiesce to ensure
	 * that all existing requests are seen in ->queue_rq() and killed
	 */
	port->drain = 1;
	FUNC5(&port->vio.lock);

	FUNC0(q);
	FUNC1(q);

	FUNC4(&port->vio.lock);
	port->drain = 0;
	FUNC3(q);
	FUNC2(q);
}