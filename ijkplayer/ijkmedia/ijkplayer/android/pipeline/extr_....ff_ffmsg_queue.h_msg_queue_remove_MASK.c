#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int what; struct TYPE_7__* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* last_msg; TYPE_2__* first_msg; int /*<<< orphan*/  nb_messages; TYPE_2__* recycle_msg; int /*<<< orphan*/  abort_request; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) inline static void FUNC4(MessageQueue *q, int what)
{
    AVMessage **p_msg, *msg, *last_msg;
    FUNC0(q->mutex);

    last_msg = q->first_msg;

    if (!q->abort_request && q->first_msg) {
        p_msg = &q->first_msg;
        while (*p_msg) {
            msg = *p_msg;

            if (msg->what == what) {
                *p_msg = msg->next;
#ifdef FFP_MERGE
                av_free(msg);
#else
                FUNC3(msg);
                msg->next = q->recycle_msg;
                q->recycle_msg = msg;
#endif
                q->nb_messages--;
            } else {
                last_msg = msg;
                p_msg = &msg->next;
            }
        }

        if (q->first_msg) {
            q->last_msg = last_msg;
        } else {
            q->last_msg = NULL;
        }
    }

    FUNC1(q->mutex);
}