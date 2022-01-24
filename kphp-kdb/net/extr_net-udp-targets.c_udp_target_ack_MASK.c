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
struct udp_target {int send_num; int max_confirmed; scalar_t__ window_size; int flags; int /*<<< orphan*/  sent; int /*<<< orphan*/  last_ack; scalar_t__ resend_state; } ;
struct udp_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ START_WINDOW_SIZE ; 
 int UDP_WAIT ; 
 struct udp_target* __S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct udp_msg*) ; 
 struct udp_msg** FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

void FUNC8 (struct udp_target *S, int x) {
  if (x >= S->send_num) {
    return;
  }
  if (x > S->max_confirmed) {
    FUNC2 (S);
    S->max_confirmed = x;
    FUNC0 (x < S->send_num);
    if (x != S->send_num - 1) {
      FUNC1 (S);
    }
    S->resend_state = 0;
  }
  S->last_ack = precise_now;
  struct udp_msg **M = FUNC4 (S->sent, (void *)&x);
  if (!M) {
    return;
  }
  struct udp_msg *msg = *M;
  S->sent = FUNC3 (S->sent, msg);
  FUNC7 (4, "S->sent: delete message %d\n", x);
  __S = S;
  FUNC5 (msg);
  if (S->window_size <= START_WINDOW_SIZE && (S->flags & UDP_WAIT)) {
    FUNC6 (S);
  }
}