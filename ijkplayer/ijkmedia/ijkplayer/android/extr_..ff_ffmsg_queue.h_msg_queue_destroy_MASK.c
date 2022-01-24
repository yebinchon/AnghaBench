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
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; TYPE_2__* recycle_msg; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) inline static void FUNC7(MessageQueue *q)
{
    FUNC6(q);

    FUNC2(q->mutex);
    while(q->recycle_msg) {
        AVMessage *msg = q->recycle_msg;
        if (msg)
            q->recycle_msg = msg->next;
        FUNC5(msg);
        FUNC4(&msg);
    }
    FUNC3(q->mutex);

    FUNC1(q->mutex);
    FUNC0(q->cond);
}