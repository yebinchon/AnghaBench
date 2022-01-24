#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_barrier_t ;
struct TYPE_4__ {int /*<<< orphan*/ * update_thread; } ;
struct TYPE_6__ {TYPE_1__ ticket; } ;
struct TYPE_5__ {int /*<<< orphan*/ * barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ session_tickets ; 

void FUNC3(h2o_barrier_t *barrier)
{
    if (conf.ticket.update_thread == NULL)
        FUNC2("ticket-based encryption MUST be enabled when running QUIC");
    FUNC0(session_tickets.barrier == NULL);
    FUNC1(barrier, 1);
    session_tickets.barrier = barrier;
}