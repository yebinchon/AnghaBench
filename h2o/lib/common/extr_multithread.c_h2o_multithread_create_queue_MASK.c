#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_async_cb ;
struct TYPE_7__ {int /*<<< orphan*/  inactive; int /*<<< orphan*/  active; } ;
struct TYPE_8__ {TYPE_1__ receivers; int /*<<< orphan*/  mutex; int /*<<< orphan*/  async; } ;
typedef  TYPE_2__ h2o_multithread_queue_t ;
typedef  int /*<<< orphan*/  h2o_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ queue_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

h2o_multithread_queue_t *FUNC6(h2o_loop_t *loop)
{
    h2o_multithread_queue_t *queue = FUNC1(sizeof(*queue));
    FUNC3(queue, 0, sizeof(*queue));

#if H2O_USE_LIBUV
    uv_async_init(loop, &queue->async, (uv_async_cb)queue_cb);
#else
    FUNC2(queue, loop);
#endif
    FUNC4(&queue->mutex, NULL);
    FUNC0(&queue->receivers.active);
    FUNC0(&queue->receivers.inactive);

    return queue;
}