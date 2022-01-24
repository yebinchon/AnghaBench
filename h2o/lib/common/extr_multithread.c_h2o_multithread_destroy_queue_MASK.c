#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_6__ {int /*<<< orphan*/  inactive; int /*<<< orphan*/  active; } ;
struct TYPE_8__ {TYPE_2__ async; int /*<<< orphan*/  mutex; TYPE_1__ receivers; } ;
typedef  TYPE_3__ h2o_multithread_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libuv_destroy_delayed ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(h2o_multithread_queue_t *queue)
{
    FUNC0(FUNC3(&queue->receivers.active));
    FUNC0(FUNC3(&queue->receivers.inactive));
    FUNC6(&queue->mutex);

#if H2O_USE_LIBUV
    uv_close((uv_handle_t *)&queue->async, libuv_destroy_delayed);
#else
    FUNC5(queue->async.read);
    FUNC4(queue->async.read);
#ifndef __linux__
    /* only one file descriptor is required for eventfd and already closed by h2o_socket_close() */
    close(queue->async.write);
#endif
    FUNC2(queue);
#endif
}