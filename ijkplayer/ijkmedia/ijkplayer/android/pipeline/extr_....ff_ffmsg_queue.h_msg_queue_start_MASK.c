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
struct TYPE_8__ {int /*<<< orphan*/  what; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; scalar_t__ abort_request; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  TYPE_2__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FFP_MSG_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) inline static void FUNC4(MessageQueue *q)
{
    FUNC0(q->mutex);
    q->abort_request = 0;

    AVMessage msg;
    FUNC2(&msg);
    msg.what = FFP_MSG_FLUSH;
    FUNC3(q, &msg);
    FUNC1(q->mutex);
}