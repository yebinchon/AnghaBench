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
struct TYPE_4__ {int what; int arg1; } ;
typedef  int /*<<< orphan*/  MessageQueue ;
typedef  TYPE_1__ AVMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) inline static void FUNC2(MessageQueue *q, int what, int arg1)
{
    AVMessage msg;
    FUNC0(&msg);
    msg.what = what;
    msg.arg1 = arg1;
    FUNC1(q, &msg);
}