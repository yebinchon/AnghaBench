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
struct udp_target {int send_num; int max_confirmed; scalar_t__ window_size; int flags; struct tree_udp_msg* sent; int /*<<< orphan*/  last_ack; scalar_t__ resend_state; } ;
struct tree_udp_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ START_WINDOW_SIZE ; 
 int UDP_WAIT ; 
 struct udp_target* __S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_udp_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_udp_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_udp_msg**,struct tree_udp_msg**,struct tree_udp_msg*,void*) ; 
 int /*<<< orphan*/  udp_msg_confirm_free ; 
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
  struct tree_udp_msg *L, *R;
  FUNC5 (&L, &R, S->sent, (void *)&x);
  S->sent = R;
  __S = S;
  FUNC3 (L, udp_msg_confirm_free);
  FUNC4 (L);
  FUNC7 (4, "S->sent: delete messages up to %d\n", x);
  if (S->window_size <= START_WINDOW_SIZE && (S->flags & UDP_WAIT)) {
    FUNC6 (S);
  }
}