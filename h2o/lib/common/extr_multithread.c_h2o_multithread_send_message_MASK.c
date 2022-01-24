#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char uint64_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_10__ {TYPE_2__* queue; int /*<<< orphan*/  _messages; int /*<<< orphan*/  _link; } ;
typedef  TYPE_3__ h2o_multithread_receiver_t ;
struct TYPE_11__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_4__ h2o_multithread_message_t ;
struct TYPE_12__ {int /*<<< orphan*/  write; } ;
struct TYPE_8__ {int /*<<< orphan*/  active; } ;
struct TYPE_9__ {TYPE_5__ async; int /*<<< orphan*/  mutex; TYPE_1__ receivers; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC9(h2o_multithread_receiver_t *receiver, h2o_multithread_message_t *message)
{
    int do_send = 0;

    FUNC5(&receiver->queue->mutex);
    if (message != NULL) {
        FUNC0(!FUNC3(&message->link));
        if (FUNC2(&receiver->_messages)) {
            FUNC4(&receiver->_link);
            FUNC1(&receiver->queue->receivers.active, &receiver->_link);
            do_send = 1;
        }
        FUNC1(&receiver->_messages, &message->link);
    } else {
        if (FUNC2(&receiver->_messages))
            do_send = 1;
    }
    FUNC6(&receiver->queue->mutex);

    if (do_send) {
#if H2O_USE_LIBUV
        uv_async_send(&receiver->queue->async);
#else
#ifdef __linux__
        uint64_t tmp = 1;
        while (FUNC8(receiver->queue->async.write, &tmp, sizeof(tmp)) == -1 && errno == EINTR)
#else
        while (write(receiver->queue->async.write, "", 1) == -1 && errno == EINTR)
#endif
            ;
#endif
    }
}