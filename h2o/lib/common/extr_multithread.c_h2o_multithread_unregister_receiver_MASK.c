#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  _link; int /*<<< orphan*/  _messages; TYPE_2__* queue; } ;
typedef  TYPE_1__ h2o_multithread_receiver_t ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ h2o_multithread_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(h2o_multithread_queue_t *queue, h2o_multithread_receiver_t *receiver)
{
    FUNC0(queue == receiver->queue);
    FUNC0(FUNC1(&receiver->_messages));
    FUNC3(&queue->mutex);
    FUNC2(&receiver->_link);
    FUNC4(&queue->mutex);
}