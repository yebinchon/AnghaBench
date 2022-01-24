#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ wakeup_time; int /*<<< orphan*/  wakeup; } ;
struct connection {TYPE_1__ timer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ALARM ; 
 int /*<<< orphan*/  conn_timer_wakeup_gateway ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ precise_now ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2 (struct connection *c, double timeout) {
  c->timer.wakeup = conn_timer_wakeup_gateway;
  c->flags &= ~C_ALARM;
  if (timeout > 0) {
    c->timer.wakeup_time = precise_now + timeout;
    return FUNC0 (&c->timer);
  } else {
    c->timer.wakeup_time = 0;
    return FUNC1 (&c->timer);
  }
}