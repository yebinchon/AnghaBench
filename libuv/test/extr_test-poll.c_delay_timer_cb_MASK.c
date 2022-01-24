#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_timer_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  events; int /*<<< orphan*/  poll_handle; int /*<<< orphan*/  delayed_events; } ;
typedef  TYPE_2__ connection_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  connection_poll_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uv_timer_t* timer) {
  connection_context_t* context = (connection_context_t*) timer->data;
  int r;

  /* Timer should auto stop. */
  FUNC0(0 == FUNC1((uv_handle_t*) timer));

  /* Add the requested events to the poll mask. */
  FUNC0(context->delayed_events != 0);
  context->events |= context->delayed_events;
  context->delayed_events = 0;

  r = FUNC2(&context->poll_handle,
                    context->events,
                    connection_poll_cb);
  FUNC0(r == 0);
}