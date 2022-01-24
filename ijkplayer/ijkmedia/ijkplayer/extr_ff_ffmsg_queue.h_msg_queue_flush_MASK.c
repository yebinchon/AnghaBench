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
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; scalar_t__ nb_messages; TYPE_2__* first_msg; int /*<<< orphan*/ * last_msg; TYPE_2__* recycle_msg; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 

__attribute__((used)) inline static void FUNC3(MessageQueue *q)
{
    AVMessage *msg, *msg1;

    FUNC0(q->mutex);
    for (msg = q->first_msg; msg != NULL; msg = msg1) {
        msg1 = msg->next;
#ifdef FFP_MERGE
        av_freep(&msg);
#else
        msg->next = q->recycle_msg;
        q->recycle_msg = msg;
#endif
    }
    q->last_msg = NULL;
    q->first_msg = NULL;
    q->nb_messages = 0;
    FUNC1(q->mutex);
}