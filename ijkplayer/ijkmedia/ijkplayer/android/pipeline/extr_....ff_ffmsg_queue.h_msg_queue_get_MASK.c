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
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/ * obj; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; TYPE_2__* recycle_msg; int /*<<< orphan*/  nb_messages; int /*<<< orphan*/ * last_msg; TYPE_2__* first_msg; scalar_t__ abort_request; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) inline static int FUNC4(MessageQueue *q, AVMessage *msg, int block)
{
    AVMessage *msg1;
    int ret;

    FUNC1(q->mutex);

    for (;;) {
        if (q->abort_request) {
            ret = -1;
            break;
        }

        msg1 = q->first_msg;
        if (msg1) {
            q->first_msg = msg1->next;
            if (!q->first_msg)
                q->last_msg = NULL;
            q->nb_messages--;
            *msg = *msg1;
            msg1->obj = NULL;
#ifdef FFP_MERGE
            av_free(msg1);
#else
            msg1->next = q->recycle_msg;
            q->recycle_msg = msg1;
#endif
            ret = 1;
            break;
        } else if (!block) {
            ret = 0;
            break;
        } else {
            FUNC0(q->cond, q->mutex);
        }
    }
    FUNC2(q->mutex);
    return ret;
}