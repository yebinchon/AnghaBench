#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct event_timer {scalar_t__ h_idx; int /*<<< orphan*/  wakeup; scalar_t__ wakeup_time; } ;
struct udp_target {scalar_t__ tx_timeout; struct event_timer tx_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_timer*) ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  tx_gateway ; 

void FUNC2 (struct udp_target *S) {
  struct event_timer *ev = &S->tx_timer;
  ev->wakeup_time = precise_now + S->tx_timeout;
  ev->wakeup = tx_gateway;
  FUNC0 (!ev->h_idx);
  ev->h_idx = 0;
  FUNC1 (ev);
}