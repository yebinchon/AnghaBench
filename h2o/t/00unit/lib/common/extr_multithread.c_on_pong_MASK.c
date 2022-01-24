#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_multithread_receiver_t ;
typedef  int /*<<< orphan*/  h2o_linklist_t ;
struct TYPE_2__ {int /*<<< orphan*/  ping_receiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ worker_thread ; 

__attribute__((used)) static void FUNC3(h2o_multithread_receiver_t *receiver, h2o_linklist_t *list)
{
    while (!FUNC0(list)) {
        FUNC1(list);
        FUNC2(&worker_thread.ping_receiver);
    }
}