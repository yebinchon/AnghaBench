#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int what; int arg1; int arg2; int /*<<< orphan*/  free_l; int /*<<< orphan*/  obj; } ;
typedef  int /*<<< orphan*/  MessageQueue ;
typedef  TYPE_1__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  msg_obj_free_l ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) inline static void FUNC4(MessageQueue *q, int what, int arg1, int arg2, void *obj, int obj_len)
{
    AVMessage msg;
    FUNC2(&msg);
    msg.what = what;
    msg.arg1 = arg1;
    msg.arg2 = arg2;
    msg.obj = FUNC0(obj_len);
    FUNC1(msg.obj, obj, obj_len);
    msg.free_l = msg_obj_free_l;
    FUNC3(q, &msg);
}